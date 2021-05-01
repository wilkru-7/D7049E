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

#include "camera.h"
#include "resources.h"
#include "objects/android.cpp"
#include "objects/floor.cpp"
#include "objects/light.cpp"
#include "objects/tree.cpp"


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

		s_texColor = bgfx::createUniform("s_texColor", bgfx::UniformType::Sampler);

		m_programTextureLighting = loadProgram("vs_stencil_texture_lighting", "fs_stencil_texture_lighting");
		m_programColorLighting   = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );
		m_programColorTexture    = loadProgram("vs_stencil_color_texture",    "fs_stencil_color_texture"   );
		m_programColorBlack      = loadProgram("vs_stencil_color",            "fs_stencil_color_black"     );
		m_programTexture         = loadProgram("vs_stencil_texture",          "fs_stencil_texture"         );

		m_figureTex     = loadTexture("textures/figure-rgba.dds");
		m_flareTex      = loadTexture("textures/flare.dds");
		m_fieldstoneTex = loadTexture("textures/fieldstone-rgba.dds");

		// Setup lights.
		lightObj.Light::init();

		// Set view and projection matrices.
		const float aspect = float(m_viewState.m_width)/float(m_viewState.m_height);
		const bgfx::Caps* caps = bgfx::getCaps();
		bx::mtxProj(m_viewState.m_proj, 60.0f, aspect, 0.1f, 100.0f, caps->homogeneousDepth);

		cameraCreate();
		cameraSetPosition({ 0.0f, 18.0f, -40.0f });
		cameraSetVerticalAngle(-0.35f);
		cameraGetViewMtx(m_viewState.m_view);

		m_timeOffset = bx::getHPCounter();

		m_numLights       = 1;
		m_reflectionValue = 0.8f;

        // physics setup https://www.reactphysics3d.com/usermanual.html#x1-4500011
        world = physicsCommon.createPhysicsWorld();
        world->setIsDebugRenderingEnabled(TRUE);
        capsuleShape = physicsCommon.createCapsuleShape(3.0, 5.0);
        orientation = reactphysics3d::Quaternion::identity();
        transform = reactphysics3d::Transform::identity();

        reactphysics3d::Vector3 androidPosition(0.0,5.0,0.0);
        reactphysics3d::Transform androidTransform(androidPosition, orientation);
        android = world->createRigidBody(androidTransform);
        android->setType(reactphysics3d::BodyType::STATIC);
        androidCollider = android->addCollider(capsuleShape, transform);

        androidCollider->setCollisionCategoryBits(0x0001);

        reactphysics3d::Vector3 treePosition(14.0,0.0,-14.0);
        reactphysics3d::Transform treeTransform(treePosition, orientation);
        tree = world->createRigidBody(treeTransform);
        tree->setType(reactphysics3d::BodyType::STATIC);
        treeCollider = tree->addCollider(capsuleShape, transform);

        treeCollider->setCollisionCategoryBits(0x0001);

        // init all the objects
        androidObj.Android::init();
        floorObj.Floor::init();
        lightObj.Light::init();

        float pos1[3] = {14.0f, 0.0f, 14.0f};
        treeObj1.Tree::init(pos1);
        float pos2[3] = {-14.0f, 0.0f, 14.0f};
        treeObj2.Tree::init(pos2);
        float pos3[3] = {14.0f, 0.0f, -14.0f};
        treeObj3.Tree::init(pos3);
        float pos4[3] = {-14.0f, 0.0f, -14.0f};
        treeObj4.Tree::init(pos4);

    }

	virtual int shutdown() override
	{
		// Cleanup.
		androidObj.Android::shutdown();
        floorObj.Floor::shutdown();
        treeObj1.Tree::shutdown();
        treeObj2.Tree::shutdown();
        treeObj3.Tree::shutdown();
        treeObj4.Tree::shutdown();

		bgfx::destroy(m_figureTex);
		bgfx::destroy(m_fieldstoneTex);
		bgfx::destroy(m_flareTex);

		bgfx::destroy(m_programTextureLighting);
		bgfx::destroy(m_programColorLighting);
		bgfx::destroy(m_programColorTexture);
		bgfx::destroy(m_programColorBlack);
		bgfx::destroy(m_programTexture);

		bgfx::destroy(s_texColor);

		s_uniforms.destroy();

		cameraDestroy();

		// Shutdown bgfx.
		bgfx::shutdown();

        world->destroyRigidBody(tree);
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

			// Update settings.
			uint8_t numLights = (uint8_t)m_numLights;
			s_uniforms.m_params.m_ambientPass  = 10.0f;
			s_uniforms.m_params.m_lightingPass = 1.0f;
			s_uniforms.m_params.m_lightCount   = float(m_numLights);
			s_uniforms.m_params.m_lightIndex   = 0.0f;
            s_uniforms.m_color[2]              = m_reflectionValue;
			s_uniforms.m_color[3]              = m_reflectionValue;

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

			// Make sure at the beginning everything gets cleared.
			clearView(0, BGFX_CLEAR_COLOR | BGFX_CLEAR_DEPTH | BGFX_CLEAR_STENCIL, m_clearValues);
			bgfx::touch(0);
			s_viewMask |= 1;

            // First pass - Draw plane.

            // Setup params for this scene.
            s_uniforms.m_params.m_ambientPass = 1.0f;
            s_uniforms.m_params.m_lightingPass = 1.0f;

            floorObj.Floor::drawSubmit(m_programColorBlack);

            // Second pass - Draw reflected objects.

            // Clear depth from previous pass.
            clearView(RENDER_VIEWID_RANGE1_PASS_1, BGFX_CLEAR_DEPTH, m_clearValues);

            // reflect the light
            lightObj.Light::reflect();

            setColorBlue();

            // reflect and submit android
            androidObj.Android::reflectSubmit(m_programColorLighting);

            setColorGreen();

            // Reflect and submit trees.
            treeObj1.Tree::reflectSubmit(m_programColorLighting);
            treeObj2.Tree::reflectSubmit(m_programColorLighting);
            treeObj3.Tree::reflectSubmit(m_programColorLighting);
            treeObj4.Tree::reflectSubmit(m_programColorLighting);

            // Set lights back.
            lightObj.Light::setLight();

            // Third pass - Blend plane.

            // Floor
            floorObj.Floor::blendSubmit(m_programTextureLighting, m_fieldstoneTex);

            // Fourth pass - Draw everything else but the plane.

            setColorBlue();

            // draw android
            androidObj.Android::drawSubmit(m_programColorLighting);

            setColorGreen();

            // draw trees
            treeObj1.Tree::drawSubmit(m_programColorLighting);
            treeObj2.Tree::drawSubmit(m_programColorLighting);
            treeObj3.Tree::drawSubmit(m_programColorLighting);
            treeObj4.Tree::drawSubmit(m_programColorLighting);

			//lights
			lightObj.Light::drawSubmit(m_viewState, m_programColorTexture, m_flareTex);

			// Draw floor bottom.
			floorObj.Floor::drawBottomSubmit(m_programTexture, m_figureTex);

			// Setup view rect and transform for all used views.
			setViewRectMask(s_viewMask, 0, 0, uint16_t(m_viewState.m_width), uint16_t(m_viewState.m_height) );
			setViewTransformMask(s_viewMask, m_viewState.m_view, m_viewState.m_proj);
			s_viewMask = 0;

            checkKeyboardInput();
            world->update(1.0f / 60.0f);

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

	void setColorBlue() {
        s_uniforms.m_color[0] = 0.0f;
        s_uniforms.m_color[1] = 0.0f;
        s_uniforms.m_color[2] = 1.0f;
	}

	void setColorGreen() {
        s_uniforms.m_color[0] = 0.0f;
        s_uniforms.m_color[1] = 1.0f;
        s_uniforms.m_color[2] = 0.0f;
	}

    void checkKeyboardInput() {
        const reactphysics3d::Transform& transform = android->getTransform();
        const reactphysics3d::Vector3& position = transform.getPosition();

	    //move left forward
        if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12]-0.35,androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]+0.35);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }

            androidObj.Android::updateMtx(-0.35,0.35,0.75);

        //move right forward
        } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12]+0.35,androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]+0.35);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }

            androidObj.Android::updateMtx(0.35,0.35,2.25);

        //move left backward
        } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12]-0.35,androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]-0.35);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }

            androidObj.Android::updateMtx(-0.35,-0.35,2.25);

        //move right backward
        } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12]+0.35,androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]-0.35);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }

            androidObj.Android::updateMtx(0.35,-0.35,0.75);

        //move left
        } else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12]-0.5,androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }

            androidObj.Android::updateMtx(-0.5,0,1.5);

        //move backward
        } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12],androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]-0.5f);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }

            androidObj.Android::updateMtx(0,-0.5,0.0);

        //move right
        } else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12]+0.5,androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }

            androidObj.Android::updateMtx(0.5,0,1.5);

        // move forward
        } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12],androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]+0.5f);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }

            androidObj.Android::updateMtx(0,0.5,0.0);

        }

        const reactphysics3d::Transform& transform2 = android->getTransform();
        const reactphysics3d::Vector3& position2 = transform.getPosition();
        androidObj.Android::updatePhysicsMtx(position2.x, position2.y, position2.z);
        /*std::cout << "Body Position: (" << position2.x << ", " <<
                  position2.y << ", " << position2.z << ")" << std::endl;
        std::cout << "Collision" << world->testOverlap(android, tree) << std::endl;*/

    }

    void resetTransform(){
        reactphysics3d::Vector3 androidPosition(androidObj.Android::getMtx()[12],androidObj.Android::getMtx()[13],androidObj.Android::getMtx()[14]);
        reactphysics3d::Transform androidTransform(androidPosition, orientation);
        android->setTransform(androidTransform);
	}

    SoLoud::Soloud soloud; // Engine core
    SoLoud::Wav sample;    // One sample

    reactphysics3d::PhysicsCommon physicsCommon;
    reactphysics3d::PhysicsWorld* world;
    reactphysics3d::Transform transform;
    reactphysics3d::CapsuleShape* capsuleShape;
    reactphysics3d::RigidBody* android;
    reactphysics3d::RigidBody* tree;
    reactphysics3d::Quaternion orientation;
    reactphysics3d::Collider* androidCollider;
    reactphysics3d::Collider* treeCollider;

    Android androidObj;
    Floor floorObj;
    Light lightObj;
    Tree treeObj1;
    Tree treeObj2;
    Tree treeObj3;
    Tree treeObj4;

    GLFWwindow* window;

	ViewState m_viewState;
	entry::MouseState m_mouseState;
	ClearValues m_clearValues;

	uint32_t m_debug;
	uint32_t m_reset;

	bgfx::ProgramHandle m_programTextureLighting;
	bgfx::ProgramHandle m_programColorLighting;
	bgfx::ProgramHandle m_programColorTexture;
	bgfx::ProgramHandle m_programColorBlack;
	bgfx::ProgramHandle m_programTexture;

	bgfx::TextureHandle m_figureTex;
	bgfx::TextureHandle m_flareTex;
	bgfx::TextureHandle m_fieldstoneTex;

	int64_t m_timeOffset;

	int32_t m_numLights;
	float   m_reflectionValue;

};

} // namespace

ENTRY_IMPLEMENT_MAIN(
	  Game
	, "Cool game"
	, "A very cool game."
	, "https://github.com/wilkru-7/D7049E"
	);