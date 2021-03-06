/*
 * Main class for the game. Contains init, shutdown, and update method.
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
#include "objects/inventory.cpp"
//#include "objects/house.h"
#include "objects/house.cpp"

#include "events/keyboardEvent.cpp"
#include "sound/soundManager.cpp"
#include "physics/physicsWorld.cpp"
#include "events/collisionEvent.cpp"


namespace
{
    KeyboardEvent keyboardEvent;

    /**
     * Sets the key callback function to the one declared in the keyboard event class.
     * @param window
     * @param key
     * @param scancode
     * @param action
     * @param mods
     */
    void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods){
        keyboardEvent.key_callback(key, action);
    }

    class Game : public entry::AppI
    {
    public:

        /**
         * Constructor for the Game class.
         * @param _name
         * @param _description
         * @param _url
         */
        Game(const char* _name, const char* _description, const char* _url)
                : entry::AppI(_name, _description, _url){}

        /**
         * Initializes GLFW, BGFX, view and projection matrices, camera, events, and objects.
         * @param _argc
         * @param _argv
         * @param _width
         * @param _height
         */
        virtual void init(int32_t _argc, const char* const* _argv, uint32_t _width, uint32_t _height) override {
            Args args(_argc, _argv);

            m_viewState   = ViewState(_width, _height);
            m_clearValues = ClearValues(0x30303000, 1.0f, 0);

            m_debug = BGFX_DEBUG_NONE;
            m_reset = BGFX_RESET_VSYNC;

            // init GLFW
            glfwInit();
            window = glfwCreateWindow(_width, _height, "A cool game", NULL, NULL);
            glfwSetKeyCallback(window, key_callback);

            bgfx::PlatformData pd;
            pd.nwh = glfwGetWin32Window(window);
            bgfx::setPlatformData(pd);

            // init BGFX
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

            // init camera
            cameraCreate();
            cameraSetPosition({ 0.0f, 28.0f, -60.0f });
            cameraSetVerticalAngle(-0.35f);
            cameraGetViewMtx(m_viewState.m_view);

            m_timeOffset = bx::getHPCounter();

            collisionEvent = new CollisionEvent(&objects);

            // init all the objects

            // using default values of 1 android, 3 floors, and 1 light
            createObjects(4, 8, 0);

            // set own values on all objects
            //createObjects(1, 1, 1, 4, 10, 0);

        }

        /**
         * Calls the other createObject function with default values on androids, floors, and lights.
         * @param trees
         * @param cubes
         * @param houses
         */
        void createObjects(int trees, int cubes, int houses) {
            createObjects(1,3,1,trees,cubes,houses);
        }

        /**
         * Creates all objects along with their corresponding physics objects.
         * All creates objects gets added to the vector list.
         * @param androids
         * @param floors
         * @param lights
         * @param trees
         * @param cubes
         * @param houses
         */
        void createObjects(int androids, int floors, int lights, int trees, int cubes, int houses) {

            // colors used for the objects
            float green[4]=  {0.0f,1.0f,0.0f,1.0f};
            float blue[4] = {0.0f,0.0f,1.0f,1.0f};
            float red[4] = {1.0f,0.0f,0.0f,1.0f};
            float black[4] = {0.0f,0.0f,0.0f,1.0f};
            float yellow[4] = {1.0f, 0.7f, 0.2f, 0.0f};

            // init the physics world with the specified number of objects
            physicsWorld.init(androids, floors, lights, trees, cubes, houses);

            // init the physics world with the specified number of objects and
            // change the default values of the booleans treesRandom and cubesRandom.
            // The default values on these are treesRandom = False and cubesRandom = True.
            //physicsWorld.init(false, true, androids, floors, lights, trees, cubes, houses);

            // create the trees
            for(int i = 0; i < trees; ++i) {
                objects.push_back(new Tree(green, physicsWorld.trees.at(i)));
            }

            // create the light
            lightObj = new Light(yellow, physicsWorld.lights.at(0));
            objects.push_back(lightObj);

            // create the android and register it as observer on the events
            for(int i = 0; i < androids; ++i) {
                objects.push_back(new Android(blue, physicsWorld.androids.at(i)));
                keyboardEvent.registerObserver((Android*) objects.back());
                collisionEvent->registerObserver((Android*) objects.back());
                inventory = new Inventory(&objects, (Android*) objects.back());
            }

            // create the floor
            for(int i = 0; i < floors; ++i) {
                objects.push_back(new Floor(black, physicsWorld.floors.at(i)));
            }

            // create the houses (currently 0 houses in the scene)
            for(int i = 0; i < houses; ++i) {
                objects.push_back(new House(red, physicsWorld.houses.at(i)));
            }

            // create the cubes
            for(int i = 0; i < cubes-1; ++i) {
                objects.push_back(new Cube(red, physicsWorld.cubes.at(i)));
            }

            // the last cube creates is the "cubeBot" (the moving black cube)
            cubeBot = new Cube(black, physicsWorld.cubes.at(cubes-1));
            cubeBot->isPickabel = false;
            objects.push_back(cubeBot);

            keyboardEvent.registerObserver(inventory);

            // init soundmanager and register it as observer on the events
            soundManager.SoundManager::init();
            keyboardEvent.registerObserver(&soundManager);
            collisionEvent->registerObserver(&soundManager);

            physicsWorld.world->setEventListener(collisionEvent);
        }

        /**
         * Shutdown all the components
         * @return
         */
        int shutdown() override {

            // shutdown all the objects
            for_each(objects.begin(), objects.end(),std::mem_fun(&Object::shutdown));

            s_uniforms.destroy();

            cameraDestroy();

            // Shutdown bgfx.
            bgfx::shutdown();

            physicsWorld.shutdown();

            glfwDestroyWindow(window);

            return 0;
        }

        /**
         * Update function that is called each frame
         * @return
         */
        bool update() override
        {

            if (!entry::processEvents(m_viewState.m_width, m_viewState.m_height, m_debug, m_reset, &m_mouseState) )
            {

                s_uniforms.submitConstUniforms();

                // Time.
                int64_t now = bx::getHPCounter();
                static int64_t last = now;
                const int64_t frameTime = now - last;
                last = now;
                const auto freq = double(bx::getHPFrequency() );
                const auto time = (float)( (now - m_timeOffset)/double(bx::getHPFrequency() ) );
                const auto deltaTime = float(frameTime/freq);
                s_uniforms.m_time = time;

                const double toMs = 1000.0 / freq;
                char fpsText[64];
                bx::snprintf(fpsText, BX_COUNTOF(fpsText), "Frame: % 7.3f[ms]", double(frameTime) * toMs);

                // print fps text
                //std::cout << fpsText << std::endl;

                // Update camera.
                cameraUpdate(deltaTime, m_mouseState);
                cameraGetViewMtx(m_viewState.m_view);

                // Set lights back.
                lightObj->setLight();

                physicsWorld.update();

                // Rendering phase
                // ------------------------------------------------------------------------------------------------------------------//

                // Make sure at the beginning everything gets cleared.
                clearView(0, BGFX_CLEAR_COLOR | BGFX_CLEAR_DEPTH | BGFX_CLEAR_STENCIL, m_clearValues);
                bgfx::touch(0);
                s_viewMask |= 1;

                clearView(RENDER_VIEWID_RANGE1_PASS_1, BGFX_CLEAR_DEPTH, m_clearValues);

                for_each(objects.begin(), objects.end(),std::mem_fun(&Object::reflectSubmit));

                lightObj->setViewState(m_viewState);

                for_each(objects.begin(), objects.end(),std::mem_fun(&Object::drawSubmit));


                // End of rendering phase
                // ------------------------------------------------------------------------------------------------------------------//

                // Setup view rect and transform for all used views.
                setViewRectMask(s_viewMask, 0, 0, uint16_t(m_viewState.m_width), uint16_t(m_viewState.m_height) );
                setViewTransformMask(s_viewMask, m_viewState.m_view, m_viewState.m_proj);
                s_viewMask = 0;

                // update position of the moving cube
                cubeBot->updatePos();
                keyboardEvent.checkKeyboardInput(window);

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

        Light* lightObj;
        std::vector<Object*> objects;
        Inventory* inventory;
        Cube* cubeBot;

        CollisionEvent* collisionEvent;
        //KeyboardEvent keyboardEvent;
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