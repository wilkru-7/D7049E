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

#include "camera.h"
#include "imgui/imgui.h"
#include "resources.cpp"


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

		// Imgui.
		//imguiCreate();

		PosNormalTexcoordVertex::init();

		s_uniforms.init();

		s_texColor = bgfx::createUniform("s_texColor", bgfx::UniformType::Sampler);

		m_programTextureLighting = loadProgram("vs_stencil_texture_lighting", "fs_stencil_texture_lighting");
		m_programColorLighting   = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );
		m_programColorTexture    = loadProgram("vs_stencil_color_texture",    "fs_stencil_color_texture"   );
		m_programColorBlack      = loadProgram("vs_stencil_color",            "fs_stencil_color_black"     );
		m_programTexture         = loadProgram("vs_stencil_texture",          "fs_stencil_texture"         );

		m_androidMesh.load("meshes/android.bin");
		m_treeMesh.load("meshes/polytree.bin");
		m_cubeMesh.load(s_cubeVertices, BX_COUNTOF(s_cubeVertices), PosNormalTexcoordVertex::ms_layout, s_cubeIndices, BX_COUNTOF(s_cubeIndices) );
		m_hplaneMesh.load(s_hplaneVertices, BX_COUNTOF(s_hplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );
		m_vplaneMesh.load(s_vplaneVertices, BX_COUNTOF(s_vplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );

		m_figureTex     = loadTexture("textures/figure-rgba.dds");
		m_flareTex      = loadTexture("textures/flare.dds");
		m_fieldstoneTex = loadTexture("textures/fieldstone-rgba.dds");

		// Setup lights.
		const float rgbInnerR[][4] =
		{
			{ 1.0f, 0.7f, 0.2f, 0.0f }, //yellow
			/*{ 0.7f, 0.2f, 1.0f, 0.0f }, //purple
			{ 0.2f, 1.0f, 0.7f, 0.0f }, //cyan
			{ 1.0f, 0.4f, 0.2f, 0.0f }, //orange
			{ 0.7f, 0.7f, 0.7f, 0.0f }, //white*/
		};

		for (uint8_t ii = 0, jj = 0; ii < MAX_NUM_LIGHTS; ++ii, ++jj)
		{
			const uint8_t index = jj%BX_COUNTOF(rgbInnerR);
			m_lightRgbInnerR[ii][0] = rgbInnerR[index][0];
			m_lightRgbInnerR[ii][1] = rgbInnerR[index][1];
			m_lightRgbInnerR[ii][2] = rgbInnerR[index][2];
			m_lightRgbInnerR[ii][3] = rgbInnerR[index][3];
		}
		bx::memCopy(s_uniforms.m_lightRgbInnerR, m_lightRgbInnerR, MAX_NUM_LIGHTS * 4*sizeof(float) );

		// Set view and projection matrices.
		const float aspect = float(m_viewState.m_width)/float(m_viewState.m_height);
		const bgfx::Caps* caps = bgfx::getCaps();
		bx::mtxProj(m_viewState.m_proj, 60.0f, aspect, 0.1f, 100.0f, caps->homogeneousDepth);

		cameraCreate();
		cameraSetPosition({ 0.0f, 18.0f, -40.0f });
		cameraSetVerticalAngle(-0.35f);
		cameraGetViewMtx(m_viewState.m_view);

		m_timeOffset = bx::getHPCounter();

		m_scene = StencilReflectionScene;
		m_numLights       = 1;
		m_reflectionValue = 0.8f;
		m_updateLights    = false;
		m_updateScene     = false;

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

        bx::mtxSRT(androidMtx
                , 2.0f
                , 2.0f
                , 2.0f
                , 0.0f
                , 0.5f
                , 0.0f
                , 0.0f
                , 5.0f
                , 0.0f
        );

    }

	virtual int shutdown() override
	{
		// Cleanup.
		m_androidMesh.unload();
		m_treeMesh.unload();
		m_cubeMesh.unload();
		m_hplaneMesh.unload();
		m_vplaneMesh.unload();

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
		//imguiDestroy();

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
		    //Beginning of left menu window
			/*imguiBeginFrame(m_mouseState.m_mx
				,  m_mouseState.m_my
				, (m_mouseState.m_buttons[entry::MouseButton::Left  ] ? IMGUI_MBUT_LEFT   : 0)
				| (m_mouseState.m_buttons[entry::MouseButton::Right ] ? IMGUI_MBUT_RIGHT  : 0)
				| (m_mouseState.m_buttons[entry::MouseButton::Middle] ? IMGUI_MBUT_MIDDLE : 0)
				,  m_mouseState.m_mz
				, uint16_t(m_viewState.m_width)
				, uint16_t(m_viewState.m_height)
				);

			showExampleDialog(this);

			ImGui::SetNextWindowPos(
				  ImVec2(m_viewState.m_width - m_viewState.m_width / 5.0f - 10.0f, 10.0f)
				, ImGuiCond_FirstUseEver
				);
			ImGui::SetNextWindowSize(
				  ImVec2(m_viewState.m_width / 5.0f, m_viewState.m_height / 2.0f)
				, ImGuiCond_FirstUseEver
				);

            // End of left menu window
			imguiEndFrame();*/

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

			static float lightTimeAccumulator = 0.0f;
			if (m_updateLights)
			{
				lightTimeAccumulator += deltaTime;
			}

			static float sceneTimeAccumulator = 0.0f;
			if (m_updateScene)
			{
				sceneTimeAccumulator += deltaTime;
			}

			float lightPosRadius[MAX_NUM_LIGHTS][4];
			const float radius = (m_scene == StencilReflectionScene) ? 15.0f : 25.0f;
/*			for (uint8_t ii = 0; ii < numLights; ++ii)
			{
				lightPosRadius[ii][0] = bx::sin( (lightTimeAccumulator*1.1f + ii*0.03f + ii*bx::kPiHalf*1.07f ) )*20.0f;
				lightPosRadius[ii][1] = 8.0f + (1.0f - bx::cos( (lightTimeAccumulator*1.5f + ii*0.29f + bx::kPiHalf*1.49f ) ) )*4.0f;
				lightPosRadius[ii][2] = bx::cos( (lightTimeAccumulator*1.3f + ii*0.13f + ii*bx::kPiHalf*1.79f ) )*20.0f;
				lightPosRadius[ii][3] = radius;
			}*/
            lightPosRadius[0][0] = 0.0f;
            lightPosRadius[0][1] = 20.0f;
            lightPosRadius[0][2] = -20.0f;
            lightPosRadius[0][3] = radius;
			bx::memCopy(s_uniforms.m_lightPosRadius, lightPosRadius, numLights * 4*sizeof(float) );

			// Floor position.
			float floorMtx[16];
			bx::mtxSRT(floorMtx
				, 20.0f  //scaleX
				, 20.0f  //scaleY
				, 20.0f  //scaleZ
				, 0.0f   //rotX
				, 0.0f   //rotY
				, 0.0f   //rotZ
				, 0.0f   //translateX
				, 0.0f   //translateY
				, 0.0f   //translateZ
				);

			// android position.
			//float androidMtx[16];
			/*bx::mtxSRT(androidMtx
				, 2.0f
				, 2.0f
				, 2.0f
				, 0.0f
				, 0.5f - sceneTimeAccumulator
				, 0.0f
				, 0.0f
				, 5.0f
				, 0.0f
				);*/


			// Trees position.
			const float dist = 14.0f;
			const float treePositions[4][3] =
			{
				{  dist, 0.0f,  dist },
				{ -dist, 0.0f,  dist },
				{  dist, 0.0f, -dist },
				{ -dist, 0.0f, -dist },
			};

			float treeMtx[4][16];
			for (uint8_t ii = 0; ii < 4; ++ii)
			{
				bx::mtxSRT(treeMtx[ii]
					, 0.5f
					, 0.5f
					, 0.5f
					, 0.0f
					, 0.0f
					, 0.0f
					, treePositions[ii][0]
					, treePositions[ii][1]
					, treePositions[ii][2]
					);
				/*std::cout << treePositions[ii][0] << std::endl;
                std::cout << treePositions[ii][1] << std::endl;
                std::cout << treePositions[ii][2] << std::endl;*/

/*                treeMtx[ii][0] = 0.5f;
                treeMtx[ii][5] = 0.5f;
                treeMtx[ii][10] = 0.5f;*/
			}
            //android scale
/*            treeMtx[0][0] = 0.5f;
            treeMtx[0][5] = 0.5f;
            treeMtx[0][10] = 0.5f;
            treeMtx[1][0] = 0.5f;
            treeMtx[1][5] = 0.5f;
            treeMtx[1][10] = 0.5f;*/

			const uint8_t numCubes = 9;
			float cubeMtx[numCubes][16];
			for (uint16_t ii = 0; ii < numCubes; ++ii)
			{
				bx::mtxSRT(cubeMtx[ii]
					, 1.0f
					, 1.0f
					, 1.0f
					, 0.0f
					, 0.0f
					, 0.0f
					, bx::sin(ii * 2.0f + 13.0f - sceneTimeAccumulator) * 13.0f
					, 4.0f
					, bx::cos(ii * 2.0f + 13.0f - sceneTimeAccumulator) * 13.0f
					);
			}

			// Make sure at the beginning everything gets cleared.
			clearView(0, BGFX_CLEAR_COLOR | BGFX_CLEAR_DEPTH | BGFX_CLEAR_STENCIL, m_clearValues);
			bgfx::touch(0);
			s_viewMask |= 1;

			// android and trees color.
/*			s_uniforms.m_color[0] = 0.70f;
			s_uniforms.m_color[1] = 0.65f;
			s_uniforms.m_color[2] = 0.60f;*/

            // First pass - Draw plane.

            // Setup params for this scene.
            s_uniforms.m_params.m_ambientPass = 1.0f;
            s_uniforms.m_params.m_lightingPass = 1.0f;

            // Floor.
            m_hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_0
                    , floorMtx
                    , m_programColorBlack
                    , s_renderStates[RenderState::StencilReflection_CraftStencil]
            );

            // Second pass - Draw reflected objects.

            // Clear depth from previous pass.
            clearView(RENDER_VIEWID_RANGE1_PASS_1, BGFX_CLEAR_DEPTH, m_clearValues);

            // Compute reflected matrix.
            float reflectMtx[16];
            mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

            // Reflect lights.
            for (uint8_t ii = 0; ii < numLights; ++ii)
            {
                bx::Vec3 reflected = bx::mul(bx::load<bx::Vec3>(lightPosRadius[ii]), reflectMtx);
                bx::store(&s_uniforms.m_lightPosRadius[ii], reflected);
                s_uniforms.m_lightPosRadius[ii][3] = lightPosRadius[ii][3];
            }

            setColorBlue();

            // Reflect and submit android.
            float mtxReflectedAndroid[16];
            bx::mtxMul(mtxReflectedAndroid, androidMtx, reflectMtx);
            m_androidMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
                    , mtxReflectedAndroid
                    , m_programColorLighting
                    , s_renderStates[RenderState::StencilReflection_DrawReflected]
            );

            setColorGreen();

            // Reflect and submit trees.
            float mtxReflectedTree[16];
            for (uint8_t ii = 0; ii < 4; ++ii)
            {
                bx::mtxMul(mtxReflectedTree, treeMtx[ii], reflectMtx);
                m_treeMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
                        , mtxReflectedTree
                        , m_programColorLighting
                        , s_renderStates[RenderState::StencilReflection_DrawReflected]
                );
            }

            // Set lights back.
            bx::memCopy(s_uniforms.m_lightPosRadius, lightPosRadius, numLights * 4*sizeof(float) );
            // Third pass - Blend plane.

            // Floor.
            m_hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_2
                    , floorMtx
                    , m_programTextureLighting
                    , s_renderStates[RenderState::StencilReflection_BlendPlane]
                    , m_fieldstoneTex
            );

            // Fourth pass - Draw everything else but the plane.

            setColorBlue();

            // android.
            m_androidMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
                    , androidMtx
                    , m_programColorLighting
                    , s_renderStates[RenderState::StencilReflection_DrawScene]
            );

            setColorGreen();

            // Trees.
            for (uint8_t ii = 0; ii < 4; ++ii)
            {
                m_treeMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
                        , treeMtx[ii]
                        , m_programColorLighting
                        , s_renderStates[RenderState::StencilReflection_DrawScene]
                );
            }

			//lights
			const float lightScale[3] = { 1.5f, 1.5f, 1.5f };
			float lightMtx[16];
			for (uint8_t ii = 0; ii < numLights; ++ii)
			{
				s_uniforms.m_color[0] = m_lightRgbInnerR[ii][0];
				s_uniforms.m_color[1] = m_lightRgbInnerR[ii][1];
				s_uniforms.m_color[2] = m_lightRgbInnerR[ii][2];

				mtxBillboard(lightMtx, m_viewState.m_view, lightPosRadius[ii], lightScale);
				m_vplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_7
					, lightMtx
					, m_programColorTexture
					, s_renderStates[RenderState::Custom_BlendLightTexture]
					, m_flareTex
					);
			}

			// Draw floor bottom.
			float floorBottomMtx[16];
			bx::mtxSRT(floorBottomMtx
				, 20.0f  //scaleX
				, 20.0f  //scaleY
				, 20.0f  //scaleZ
				, 0.0f   //rotX
				, 0.0f   //rotY
				, 0.0f   //rotZ
				, 0.0f   //translateX
				, -0.1f  //translateY
				, 0.0f   //translateZ
				);

			m_hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_7
				, floorBottomMtx
				, m_programTexture
				, s_renderStates[RenderState::Custom_DrawPlaneBottom]
				, m_figureTex
				);

			// Setup view rect and transform for all used views.
			setViewRectMask(s_viewMask, 0, 0, uint16_t(m_viewState.m_width), uint16_t(m_viewState.m_height) );
			setViewTransformMask(s_viewMask, m_viewState.m_view, m_viewState.m_proj);
			s_viewMask = 0;

            checkKeyboardInput();
            //checkForCollision() to be implemented
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
            reactphysics3d::Vector3 androidPosition(androidMtx[12]-0.35,androidMtx[13],androidMtx[14]+0.35);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }
        //move right forward
        } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidMtx[12]+0.35,androidMtx[13],androidMtx[14]+0.35);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }
        //move left backward
        } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidMtx[12]-0.35,androidMtx[13],androidMtx[14]-0.35);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }
        //move right backward
        } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidMtx[12]+0.35,androidMtx[13],androidMtx[14]-0.35);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }
        //move left
        } else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidMtx[12]-0.5,androidMtx[13],androidMtx[14]);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }
        //move backward
        } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidMtx[12],androidMtx[13],androidMtx[14]-0.5f);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }
        //move right
        } else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {

            reactphysics3d::Vector3 androidPosition(androidMtx[12]+0.5,androidMtx[13],androidMtx[14]);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);

            if(world->testOverlap(android, tree)) {
                resetTransform();
            }
        // move forward
        } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
            reactphysics3d::Vector3 androidPosition(androidMtx[12],androidMtx[13],androidMtx[14]+0.5f);
            reactphysics3d::Transform androidTransform(androidPosition, orientation);
            android->setTransform(androidTransform);
            if(world->testOverlap(android, tree)) {
                resetTransform();
            }
        }

        const reactphysics3d::Transform& transform2 = android->getTransform();
        const reactphysics3d::Vector3& position2 = transform.getPosition();
        androidMtx[12] = position2.x;
        androidMtx[13] = position2.y;
        androidMtx[14] = position2.z;
        /*std::cout << "Body Position: (" << position2.x << ", " <<
                  position2.y << ", " << position2.z << ")" << std::endl;
        std::cout << "Collision" << world->testOverlap(android, tree) << std::endl;*/

    }

    void resetTransform(){
        reactphysics3d::Vector3 androidPosition(androidMtx[12],androidMtx[13],androidMtx[14]);
        reactphysics3d::Transform androidTransform(androidPosition, orientation);
        android->setTransform(androidTransform);
	}

    reactphysics3d::PhysicsCommon physicsCommon;
    reactphysics3d::PhysicsWorld* world;
    reactphysics3d::Transform transform;
    reactphysics3d::CapsuleShape* capsuleShape;
    reactphysics3d::RigidBody* android;
    reactphysics3d::RigidBody* tree;
    reactphysics3d::Quaternion orientation;
    reactphysics3d::Collider* androidCollider;
    reactphysics3d::Collider* treeCollider;

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

	Mesh m_androidMesh;
	Mesh m_treeMesh;
	Mesh m_cubeMesh;
	Mesh m_hplaneMesh;
	Mesh m_vplaneMesh;

    float androidMtx[16];

	bgfx::TextureHandle m_figureTex;
	bgfx::TextureHandle m_flareTex;
	bgfx::TextureHandle m_fieldstoneTex;

	float m_lightRgbInnerR[MAX_NUM_LIGHTS][4];

	int64_t m_timeOffset;

	enum Scene
	{
		StencilReflectionScene = 0,
	};

	Scene m_scene;
	int32_t m_numLights;
	float   m_reflectionValue;
	bool    m_updateLights;
	bool    m_updateScene;

};

} // namespace

ENTRY_IMPLEMENT_MAIN(
	  Game
	, "Cool game"
	, "A very cool game."
	, "https://github.com/wilkru-7/D7049E"
	);

