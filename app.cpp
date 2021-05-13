/*
 * Copyright 2013-2014 Dario Manesku. All rights reserved.
 * License: https://github.com/bkaradzic/bgfx#license-bsd-2-clause
 */

#define ENTRY_CONFIG_IMPLEMENT_MAIN 1
#include <string>
#include <vector>

#include "common.h"
#include "bgfx_utils.h"
#include <bx/file.h>
#include "bgfx/platform.h"

#include "GLFW/glfw3.h"
#define GLFW_EXPOSE_NATIVE_WIN32
#include "GLFW/glfw3native.h"

#include <reactphysics3d/reactphysics3d.h>

#include "soloud.h"
#include "soloud_wav.h"
#include <list>

#include "camera.h"
#include "resources.h"
#include "objects/android.cpp"
#include "objects/floor.cpp"
#include "objects/light.cpp"
#include "objects/tree.cpp"
#include "objects/cube.cpp"

#include "events/keyboardEvent.cpp"
#include "sound/soundManager.cpp"
#include "physics/physicsWorld.cpp"
#include "events/collisionEvent.cpp"


namespace
{

    class Game : public entry::AppI
    {
    public:
        Game(const char* _name, const char* _description, const char* _url)
                : entry::AppI(_name, _description, _url)
        {
        }

        virtual void init(int32_t _argc, const char* const* _argv, uint32_t _width, uint32_t _height) override
        {
            Args args(_argc, _argv);

            m_viewState   = ViewState(_width, _height);
            m_clearValues = ClearValues(0x30303000, 1.0f, 0);

            m_debug = BGFX_DEBUG_NONE;
            m_reset = BGFX_RESET_VSYNC;

            glfwInit();
            window = glfwCreateWindow(_width, _height, "A cool game", NULL, NULL);

            bgfx::PlatformData pd;
            pd.nwh = glfwGetWin32Window(window);
            bgfx::setPlatformData(pd);

            bgfx::Init init;
            init.type     = args.m_type;
            init.vendorId = args.m_pciId;
            init.resolution.width  = m_viewState.m_width;
            init.resolution.height = m_viewState.m_height;
            init.resolution.reset  = m_reset;
            bgfx::init(init);

            // Enable debug text.
            bgfx::setDebug(m_debug);

            PosNormalTexcoordVertex::init();

            s_uniforms.init();

            // Set view and projection matrices.
            const float aspect = float(m_viewState.m_width)/float(m_viewState.m_height);
            const bgfx::Caps* caps = bgfx::getCaps();
            bx::mtxProj(m_viewState.m_proj, 60.0f, aspect, 0.1f, 100.0f, caps->homogeneousDepth);

            cameraCreate();
            cameraSetPosition({ 0.0f, 18.0f, -40.0f });
            cameraSetVerticalAngle(-0.35f);
            cameraGetViewMtx(m_viewState.m_view);

            m_timeOffset = bx::getHPCounter();

            physicsWorld.init();

            float green[4]=  {0.0f,1.0f,0.0f,1.0f};
            float blue[4] = {0.0f,0.0f,1.0f,1.0f};
            float black[4] = {0.0f,0.0f,0.0f,1.0f};
            float yellow[4] = { 1.0f, 0.7f, 0.2f, 0.0f };

            // init all the objects
            androidObj.Android::init(blue, physicsWorld.android);

            cubeObj.Cube::init(yellow, physicsWorld.cube);

            floorObj.Floor::init(black, physicsWorld.floor);
            lightObj.Light::init(yellow);

            treeObj1.Tree::init(green, physicsWorld.tree1);
            treeObj2.Tree::init(green, physicsWorld.tree2);
            treeObj3.Tree::init(green, physicsWorld.tree3);
            treeObj4.Tree::init(green, physicsWorld.tree4);

            objects.push_back(&lightObj);
            objects.push_back(&androidObj);
            objects.push_back(&treeObj1);
            objects.push_back(&treeObj2);
            objects.push_back(&treeObj3);
            objects.push_back(&treeObj4);
            objects.push_back(&floorObj);
            objects.push_back(&cubeObj);

            soundManager.SoundManager::init();

            keyboardEvent.registerObserver(&androidObj);
            keyboardEvent.registerObserver(&soundManager);

            collisionEvent.registerObserver(&androidObj);
            collisionEvent.registerObserver(&soundManager);
            physicsWorld.world->setEventListener(&collisionEvent);
        }

        virtual int shutdown() override {
            // Cleanup.
            for_each(objects.begin(), objects.end(),std::mem_fun(&Object::shutdown));

            s_uniforms.destroy();

            cameraDestroy();

            // Shutdown bgfx.
            bgfx::shutdown();

            physicsWorld.shutdown();

            glfwDestroyWindow(window);

            return 0;
        }

        virtual bool update() override
        {

            if (!entry::processEvents(m_viewState.m_width, m_viewState.m_height, m_debug, m_reset, &m_mouseState) )
            {

                s_uniforms.submitConstUniforms();

                // Time.
                int64_t now = bx::getHPCounter();
                static int64_t last = now;
                const int64_t frameTime = now - last;
                last = now;
                const double freq = double(bx::getHPFrequency() );
                const float time = (float)( (now - m_timeOffset)/double(bx::getHPFrequency() ) );
                const float deltaTime = float(frameTime/freq);
                s_uniforms.m_time = time;

                // Update camera.
                cameraUpdate(deltaTime, m_mouseState);
                cameraGetViewMtx(m_viewState.m_view);

                // Set lights back.
                lightObj.Light::setLight();

                physicsWorld.update();

                //world->update(1.0f / 60.0f);

                // Rendering phase
                // ------------------------------------------------------------------------------------------------------------------//

                // Make sure at the beginning everything gets cleared.
                clearView(0, BGFX_CLEAR_COLOR | BGFX_CLEAR_DEPTH | BGFX_CLEAR_STENCIL, m_clearValues);
                bgfx::touch(0);
                s_viewMask |= 1;

                clearView(RENDER_VIEWID_RANGE1_PASS_1, BGFX_CLEAR_DEPTH, m_clearValues);

                for_each(objects.begin(), objects.end(),std::mem_fun(&Object::reflectSubmit));

                lightObj.setViewState(m_viewState);

                for_each(objects.begin(), objects.end(),std::mem_fun(&Object::drawSubmit));


                // End of rendering phase
                // ------------------------------------------------------------------------------------------------------------------//

                // Setup view rect and transform for all used views.
                setViewRectMask(s_viewMask, 0, 0, uint16_t(m_viewState.m_width), uint16_t(m_viewState.m_height) );
                setViewTransformMask(s_viewMask, m_viewState.m_view, m_viewState.m_proj);
                s_viewMask = 0;

                keyboardEvent.checkKeyboardInput(window);
                /*world->update(1.0f / 60.0f);*/

                // Advance to next frame. Rendering thread will be kicked to
                // process submitted rendering primitives.
                bgfx::frame();

                glfwSwapBuffers(window);
                glfwPollEvents();

                //reset clear values on used views
                clearViewMask(s_clearMask, BGFX_CLEAR_NONE, m_clearValues);
                s_clearMask = 0;

                return true;
            }

            return false;
        }

        SoLoud::Soloud soloud; // Engine core
        SoLoud::Wav sample;    // One sample

        PhysicsWorld physicsWorld;

        Android androidObj;
        Floor floorObj;
        Light lightObj;
        Tree treeObj1;
        Tree treeObj2;
        Tree treeObj3;
        Tree treeObj4;
        Cube cubeObj;
        std::list<Object*> objects;

        CollisionEvent collisionEvent;
        KeyboardEvent keyboardEvent;
        SoundManager soundManager;

        GLFWwindow* window;

        ViewState m_viewState;
        entry::MouseState m_mouseState;
        ClearValues m_clearValues;

        uint32_t m_debug;
        uint32_t m_reset;

        int64_t m_timeOffset;

    };

} // namespace

ENTRY_IMPLEMENT_MAIN(
        Game
, "Cool game"
, "A very cool game."
, "https://github.com/wilkru-7/D7049E"
);