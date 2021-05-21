//
// Created by carol on 2021-05-01.
//

#include "common.h"
#include "bgfx_utils.h"
#include "light.h"

Light::Light(float col[4], reactphysics3d::RigidBody* body) {
    type = "Light";

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];

    position[0] = 0.0f;
    position[1] = 20.0f;
    position[2] = -20.0f;
    position[3] = 20.0f;

    bx::memCopy(s_uniforms.m_lightRgbInnerR, color, MAX_NUM_LIGHTS * 4*sizeof(float) );

    mesh.load(s_vplaneVertices, BX_COUNTOF(s_vplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );

    programColorLighting    = loadProgram("vs_stencil_color_texture",    "fs_stencil_color_texture"   );
    flareTex      = loadTexture("textures/flare.dds");
}

void Light::shutdown() {
    mesh.unload();
    bgfx::destroy(programColorLighting);
    bgfx::destroy(flareTex);
}

void Light::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    bx::Vec3 reflected = bx::mul(bx::load<bx::Vec3>(position), reflectMtx);
    bx::store(&s_uniforms.m_lightPosRadius[0], reflected);
    s_uniforms.m_lightPosRadius[0][3] = position[3];

    setLight();
}

void Light::setLight() {
    bx::memCopy(s_uniforms.m_lightPosRadius, position, 4*sizeof(float) );
}

void Light::setViewState(ViewState VS) {
    viewState = VS;
}


void Light::drawSubmit() {
    const float lightScale[3] = { 1.5f, 1.5f, 1.5f };

    mtxBillboard(mtx, viewState.m_view, position, lightScale);
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_7
            , mtx
            , programColorLighting
            , s_renderStates[RenderState::Custom_BlendLightTexture]
            , flareTex
            , color
    );
}