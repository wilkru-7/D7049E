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
		imguiCreate();

		PosNormalTexcoordVertex::init();

		s_uniforms.init();

		s_texColor = bgfx::createUniform("s_texColor", bgfx::UniformType::Sampler);

		m_programTextureLighting = loadProgram("vs_stencil_texture_lighting", "fs_stencil_texture_lighting");
		m_programColorLighting   = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );
		m_programColorTexture    = loadProgram("vs_stencil_color_texture",    "fs_stencil_color_texture"   );
		m_programColorBlack      = loadProgram("vs_stencil_color",            "fs_stencil_color_black"     );
		m_programTexture         = loadProgram("vs_stencil_texture",          "fs_stencil_texture"         );

		m_bunnyMesh.load("meshes/android.bin");
		m_columnMesh.load("meshes/polytree.bin");
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
			{ 0.7f, 0.2f, 1.0f, 0.0f }, //purple
			{ 0.2f, 1.0f, 0.7f, 0.0f }, //cyan
			{ 1.0f, 0.4f, 0.2f, 0.0f }, //orange
			{ 0.7f, 0.7f, 0.7f, 0.0f }, //white
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
	}

	virtual int shutdown() override
	{
		// Cleanup.
		m_bunnyMesh.unload();
		m_columnMesh.unload();
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
		imguiDestroy();

		// Shutdown bgfx.
		bgfx::shutdown();

		return 0;
	}

	virtual bool update() override
	{
		if (!entry::processEvents(m_viewState.m_width, m_viewState.m_height, m_debug, m_reset, &m_mouseState) )
		{
			imguiBeginFrame(m_mouseState.m_mx
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

			imguiEndFrame();

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

			// Bunny position.
			float bunnyMtx[16];
			bx::mtxSRT(bunnyMtx
				, 2.0f
				, 2.0f
				, 2.0f
				, 0.0f
				, 0.5f - sceneTimeAccumulator
				, 0.0f
				, 0.0f
				, 5.0f
				, 0.0f
				);


			// Columns position.
			const float dist = 14.0f;
			const float columnPositions[4][3] =
			{
				{  dist, 0.0f,  dist },
				{ -dist, 0.0f,  dist },
				{  dist, 0.0f, -dist },
				{ -dist, 0.0f, -dist },
			};

			float columnMtx[4][16];
			for (uint8_t ii = 0; ii < 4; ++ii)
			{
				bx::mtxSRT(columnMtx[ii]
					, 0.5f
					, 0.5f
					, 0.5f
					, 0.0f
					, 0.0f
					, 0.0f
					, columnPositions[ii][0]
					, columnPositions[ii][1]
					, columnPositions[ii][2]
					);
/*                columnMtx[ii][0] = 0.5f;
                columnMtx[ii][5] = 0.5f;
                columnMtx[ii][10] = 0.5f;*/
			}
            //Bunny scale
/*            columnMtx[0][0] = 0.5f;
            columnMtx[0][5] = 0.5f;
            columnMtx[0][10] = 0.5f;
            columnMtx[1][0] = 0.5f;
            columnMtx[1][5] = 0.5f;
            columnMtx[1][10] = 0.5f;*/

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

			// Bunny and columns color.
/*			s_uniforms.m_color[0] = 0.70f;
			s_uniforms.m_color[1] = 0.65f;
			s_uniforms.m_color[2] = 0.60f;*/

            s_uniforms.m_color[0] = 0.0f;
            s_uniforms.m_color[1] = 1.0f;
            s_uniforms.m_color[2] = 0.0f;

			switch (m_scene)
			{
			case StencilReflectionScene:
				{
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

					// Reflect and submit bunny.
					float mtxReflectedBunny[16];
					bx::mtxMul(mtxReflectedBunny, bunnyMtx, reflectMtx);
					m_bunnyMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
						, mtxReflectedBunny
						, m_programColorLighting
						, s_renderStates[RenderState::StencilReflection_DrawReflected]
						);

					// Reflect and submit columns.
					float mtxReflectedColumn[16];
					for (uint8_t ii = 0; ii < 4; ++ii)
					{
						bx::mtxMul(mtxReflectedColumn, columnMtx[ii], reflectMtx);
						m_columnMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
							, mtxReflectedColumn
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

					// Bunny.
					m_bunnyMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
						, bunnyMtx
						, m_programColorLighting
						, s_renderStates[RenderState::StencilReflection_DrawScene]
						);

					// Columns.
					for (uint8_t ii = 0; ii < 4; ++ii)
					{
						m_columnMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
							, columnMtx[ii]
							, m_programColorLighting
							, s_renderStates[RenderState::StencilReflection_DrawScene]
							);
					}

				}
				break;

			case ProjectionShadowsScene:
				{
					// First pass - Draw entire scene. (ambient only).
					s_uniforms.m_params.m_ambientPass = 1.0f;
					s_uniforms.m_params.m_lightingPass = 1.0f;

					// Bunny.
					m_bunnyMesh.submit(RENDER_VIEWID_RANGE1_PASS_0
						, bunnyMtx
						, m_programColorLighting
						, s_renderStates[RenderState::ProjectionShadows_DrawAmbient]
						);

					// Floor.
					m_hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_0
						, floorMtx
						, m_programTextureLighting
						, s_renderStates[RenderState::ProjectionShadows_DrawAmbient]
						, m_fieldstoneTex
						);

					// Cubes.
					for (uint8_t ii = 0; ii < numCubes; ++ii)
					{
						m_cubeMesh.submit(RENDER_VIEWID_RANGE1_PASS_0
							, cubeMtx[ii]
							, m_programTextureLighting
							, s_renderStates[RenderState::ProjectionShadows_DrawAmbient]
							, m_figureTex
							);
					}

					// Ground plane.
					float ground[4] = { 0.0f, 1.0f, 0.0f, -bx::dot(bx::Vec3{ 0.0f, 0.0f, 0.0f }, bx::Vec3{ 0.0f, 1.0f, 0.0f }) - 0.01f };

					for (uint8_t ii = 0, viewId = RENDER_VIEWID_RANGE5_PASS_6; ii < numLights; ++ii, ++viewId)
					{
						// Clear stencil for this light source.
						clearView(viewId, BGFX_CLEAR_STENCIL, m_clearValues);

						// Draw shadow projection of scene objects.

						// Get homogeneous light pos.
						float* lightPos = lightPosRadius[ii];
						float pos[4];
						bx::memCopy(pos, lightPos, sizeof(float) * 3);
						pos[3] = 1.0f;

						// Calculate shadow mtx for current light.
						float shadowMtx[16];
						mtxShadow(shadowMtx, ground, pos);

						// Submit bunny's shadow.
						float mtxShadowedBunny[16];
						bx::mtxMul(mtxShadowedBunny, bunnyMtx, shadowMtx);
						m_bunnyMesh.submit(viewId
							, mtxShadowedBunny
							, m_programColorBlack
							, s_renderStates[RenderState::ProjectionShadows_CraftStencil]
							);

						// Submit cube shadows.
						float mtxShadowedCube[16];
						for (uint8_t jj = 0; jj < numCubes; ++jj)
						{
							bx::mtxMul(mtxShadowedCube, cubeMtx[jj], shadowMtx);
							m_cubeMesh.submit(viewId
								, mtxShadowedCube
								, m_programColorBlack
								, s_renderStates[RenderState::ProjectionShadows_CraftStencil]
								);
						}

						// Draw entire scene. (lighting pass only. blending is on)
						s_uniforms.m_params.m_ambientPass = 0.0f;
						s_uniforms.m_params.m_lightingPass = 1.0f;
						s_uniforms.m_params.m_lightCount = 1.0f;
						s_uniforms.m_params.m_lightIndex = float(ii);

						// Bunny.
						m_bunnyMesh.submit(viewId
							, bunnyMtx
							, m_programColorLighting
							, s_renderStates[RenderState::ProjectionShadows_DrawDiffuse]
							);

						// Floor.
						m_hplaneMesh.submit(viewId
							, floorMtx
							, m_programTextureLighting
							, s_renderStates[RenderState::ProjectionShadows_DrawDiffuse]
							, m_fieldstoneTex
							);

						// Cubes.
						for (uint8_t jj = 0; jj < numCubes; ++jj)
						{
							m_cubeMesh.submit(viewId
								, cubeMtx[jj]
								, m_programTextureLighting
								, s_renderStates[RenderState::ProjectionShadows_DrawDiffuse]
								, m_figureTex
								);
						}
					}

					// Reset these to default..
					s_uniforms.m_params.m_ambientPass = 1.0f;
					s_uniforms.m_params.m_lightingPass = 1.0f;
				}
				break;
			};

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

			// Advance to next frame. Rendering thread will be kicked to
			// process submitted rendering primitives.
			bgfx::frame();

			//reset clear values on used views
			clearViewMask(s_clearMask, BGFX_CLEAR_NONE, m_clearValues);
			s_clearMask = 0;

			return true;
		}

		return false;
	}

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

	Mesh m_bunnyMesh;
	Mesh m_columnMesh;
	Mesh m_cubeMesh;
	Mesh m_hplaneMesh;
	Mesh m_vplaneMesh;

	bgfx::TextureHandle m_figureTex;
	bgfx::TextureHandle m_flareTex;
	bgfx::TextureHandle m_fieldstoneTex;

	float m_lightRgbInnerR[MAX_NUM_LIGHTS][4];

	int64_t m_timeOffset;

	enum Scene
	{
		StencilReflectionScene = 0,
		ProjectionShadowsScene,
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
	, "https://bkaradzic.github.io/bgfx/examples.html#stencil"
	);
