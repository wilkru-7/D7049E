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

#include "events/keyboardEvent.cpp"


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
            // Initialize SoLoud (automatic back-end selection)
            soloud.init();

            sample.load("../../../../mozart.wav"); // Load a wave file
            soloud.play(sample);        // Play it

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

            // physics setup https://www.reactphysics3d.com/usermanual.html#x1-4500011
            settings.defaultVelocitySolverNbIterations = 20;
            settings.isSleepingEnabled = false;
            settings.gravity = reactphysics3d::Vector3(0, rp3d::decimal(-9.81), 0);
            world = physicsCommon.createPhysicsWorld(settings);
            world->setIsDebugRenderingEnabled(TRUE);
            capsuleShape = physicsCommon.createCapsuleShape(3.0, 5.0);
            boxShape = physicsCommon.createBoxShape(rp3d::Vector3(200.0, 1.0, 200.0));
            /*orientation = reactphysics3d::Quaternion::identity();
            transform = reactphysics3d::Transform::identity();*/

            reactphysics3d::Vector3 androidPosition(0.0,20.0,0.0);
            android = createObj(androidPosition, capsuleShape, reactphysics3d::BodyType::DYNAMIC);
            android->enableGravity(true);

            /*reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android = world->createRigidBody(androidTransform);
            android->setType(reactphysics3d::BodyType::DYNAMIC);
            android->enableGravity(true);
            androidCollider = android->addCollider(capsuleShape, transform);

            androidCollider->setCollisionCategoryBits(0x0001);*/

            tree1 = createObj(reactphysics3d::Vector3(14.0,0.0,14.0), capsuleShape, reactphysics3d::BodyType::STATIC);
            tree2 = createObj(reactphysics3d::Vector3(-14.0,0.0,14.0), capsuleShape, reactphysics3d::BodyType::STATIC);
            tree3 = createObj(reactphysics3d::Vector3(14.0,0.0,-14.0), capsuleShape, reactphysics3d::BodyType::STATIC);
            tree4 = createObj(reactphysics3d::Vector3(-14.0,0.0,-14.0), capsuleShape, reactphysics3d::BodyType::STATIC);

            reactphysics3d::Vector3 floorPosition(0.0,0.0,0.0);
            floor = createObj(floorPosition, boxShape, reactphysics3d::BodyType::STATIC);

            /*reactphysics3d::Transform floorTransform(floorPosition, orientation);
            floor = world->createRigidBody(floorTransform);
            floor->setType(reactphysics3d::BodyType::STATIC);
            floorCollider = floor->addCollider(boxShape, transform);

            floorCollider->setCollisionCategoryBits(0x0001);*/

            float green[4]=  {0.0f,1.0f,0.0f,1.0f};
            float blue[4] = {0.0f,0.0f,1.0f,1.0f};
            float black[4] = {0.0f,0.0f,0.0f,1.0f};
            float yellow[4] = { 1.0f, 0.7f, 0.2f, 0.0f };

            // init all the objects
            androidObj.Android::init(blue, android);

            float pos0[3] = {0.0f, 0.0f, 0.0f};
            floorObj.Floor::init(pos0, black, floor);
            lightObj.Light::init(pos0, yellow);

            treeObj1.Tree::init(green, tree1);
            treeObj2.Tree::init(green, tree2);
            treeObj3.Tree::init(green, tree3);
            treeObj4.Tree::init(green, tree4);

            objects.push_back(&lightObj);
            objects.push_back(&androidObj);
            objects.push_back(&treeObj1);
            objects.push_back(&treeObj2);
            objects.push_back(&treeObj3);
            objects.push_back(&treeObj4);
            objects.push_back(&floorObj);

            keyboardEvent.registerObserver(&androidObj);
        }

        reactphysics3d::RigidBody* createObj(reactphysics3d::Vector3 pos, reactphysics3d::CollisionShape* shape, reactphysics3d::BodyType type) {
            reactphysics3d::Quaternion orientation = reactphysics3d::Quaternion::identity();
            reactphysics3d::Transform transform = reactphysics3d::Transform::identity();
            reactphysics3d::Transform tf(pos, orientation);
            reactphysics3d::RigidBody* obj = world->createRigidBody(tf);

            obj->setType(type);
            obj->addCollider(shape, transform);

            return obj;
        }

        virtual int shutdown() override {
            // Cleanup.
            for_each(objects.begin(), objects.end(),std::mem_fun(&Object::shutdown));

            s_uniforms.destroy();

            cameraDestroy();

            // Shutdown bgfx.
            bgfx::shutdown();

            world->destroyRigidBody(tree1);
            world->destroyRigidBody(tree2);
            world->destroyRigidBody(tree3);
            world->destroyRigidBody(tree4);
            world->destroyRigidBody(floor);
            world->destroyRigidBody(android);
            physicsCommon.destroyPhysicsWorld(world);

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

                world->update(1.0f / 60.0f);

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

        /*void checkKeyboardInput() {
            const reactphysics3d::Transform& transform = android->getTransform();
            const reactphysics3d::Vector3& position = transform.getPosition();

            //move left forward
            if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
                std::cout << "before" << std::endl;
                std::cout << androidObj.Android::getMtx()[12] << std::endl;

                float newPos[3] = {position.x-0.35f,position.y,position.z+0.35f};
                keyboardEvent.notifyObservers(newPos);

                std::cout << "after" << std::endl;
                std::cout << androidObj.Android::getMtx()[12] << std::endl;
                /*reactphysics3d::Vector3 androidPosition(position.x-0.35,position.y,position.z+0.35);
                reactphysics3d::Transform androidTransform(androidPosition, orientation);
                android->setTransform(androidTransform);

                if(world->testOverlap(android, tree)) {
                    resetTransform();
                }

                androidObj.Android::updateRot(0.75);*/

                //move right forward
            /*} else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
                reactphysics3d::Vector3 androidPosition(position.x+0.35,position.y,position.z+0.35);
                reactphysics3d::Transform androidTransform(androidPosition, orientation);
                android->setTransform(androidTransform);

                if(world->testOverlap(android, tree)) {
                    resetTransform();
                }

                androidObj.Android::updateRot(2.25);

                //move left backward
            } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
                reactphysics3d::Vector3 androidPosition(position.x-0.35,position.y,position.z-0.35);
                reactphysics3d::Transform androidTransform(androidPosition, orientation);
                android->setTransform(androidTransform);

                if(world->testOverlap(android, tree)) {
                    resetTransform();
                }

                androidObj.Android::updateRot(2.25);

                //move right backward
            } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
                reactphysics3d::Vector3 androidPosition(position.x+0.35,position.y,position.z-0.35);
                reactphysics3d::Transform androidTransform(androidPosition, orientation);
                android->setTransform(androidTransform);

                if(world->testOverlap(android, tree)) {
                    resetTransform();
                }

                androidObj.Android::updateRot(0.75);

                //move left
            } else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
                reactphysics3d::Vector3 androidPosition(position.x-0.5,position.y,position.z);
                reactphysics3d::Transform androidTransform(androidPosition, orientation);
                android->setTransform(androidTransform);

                if(world->testOverlap(android, tree)) {
                    resetTransform();
                }

                androidObj.Android::updateRot(1.5);

                //move backward
            } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
                reactphysics3d::Vector3 androidPosition(position.x,position.y,position.z-0.5);
                reactphysics3d::Transform androidTransform(androidPosition, orientation);
                android->setTransform(androidTransform);

                if(world->testOverlap(android, tree)) {
                    resetTransform();
                }

                androidObj.Android::updateRot(0.0);

                //move right
            } else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
                reactphysics3d::Vector3 androidPosition(position.x+0.5,position.y,position.z);
                reactphysics3d::Transform androidTransform(androidPosition, orientation);
                android->setTransform(androidTransform);

                if(world->testOverlap(android, tree)) {
                    resetTransform();
                }

                androidObj.Android::updateRot(1.5);

                // move forward
            } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
                reactphysics3d::Vector3 androidPosition(position.x,position.y,position.z+0.5);
                reactphysics3d::Transform androidTransform(androidPosition, orientation);
                android->setTransform(androidTransform);

                if(world->testOverlap(android, tree)) {
                    resetTransform();
                }

                androidObj.Android::updateRot(0.0);

            }

            androidObj.Android::updateMtx(position.x, position.y, position.z);
            /*std::cout << "Body Position: (" << position2.x << ", " <<
                      position2.y << ", " << position2.z << ")" << std::endl;
            std::cout << "Collision" << world->testOverlap(android, tree) << std::endl;*/

        //}

        /*void resetTransform(){
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12],androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);
        }*/

        SoLoud::Soloud soloud; // Engine core
        SoLoud::Wav sample;    // One sample

        reactphysics3d::PhysicsWorld::WorldSettings settings;
        reactphysics3d::PhysicsCommon physicsCommon;
        reactphysics3d::PhysicsWorld* world;
        reactphysics3d::Transform transform;
        reactphysics3d::CapsuleShape* capsuleShape;
        reactphysics3d::BoxShape* boxShape;
        reactphysics3d::RigidBody* android;
        //reactphysics3d::RigidBody* tree;
        reactphysics3d::RigidBody* tree1;
        reactphysics3d::RigidBody* tree2;
        reactphysics3d::RigidBody* tree3;
        reactphysics3d::RigidBody* tree4;
        reactphysics3d::RigidBody* floor;
        reactphysics3d::Quaternion orientation;
        reactphysics3d::Collider* androidCollider;
        reactphysics3d::Collider* treeCollider;
        reactphysics3d::Collider* floorCollider;

        Android androidObj;
        Floor floorObj;
        Light lightObj;
        Tree treeObj1;
        Tree treeObj2;
        Tree treeObj3;
        Tree treeObj4;
        std::list<Object*> objects;

        KeyboardEvent keyboardEvent;

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