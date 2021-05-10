//
// Created by carol on 2021-05-01.
//

#include "common.h"
#include "bgfx_utils.h"
#include "light.h"

void Light::init(float color[4]) {

    const float rgbInnerR[][4] =
            {
                    {color[0], color[1], color[2], color[3] },
                    //{ 1.0f, 0.7f, 0.2f, 0.0f }, //yellow
                    /*{ 0.7f, 0.2f, 1.0f, 0.0f }, //purple
                    { 0.2f, 1.0f, 0.7f, 0.0f }, //cyan
                    { 1.0f, 0.4f, 0.2f, 0.0f }, //orange
                    { 0.7f, 0.7f, 0.7f, 0.0f }, //white*/
            };

    for (uint8_t ii = 0, jj = 0; ii < MAX_NUM_LIGHTS; ++ii, ++jj)
    {
        const uint8_t index = jj%BX_COUNTOF(rgbInnerR);
        lightRgbInnerR[ii][0] = rgbInnerR[index][0];
        lightRgbInnerR[ii][1] = rgbInnerR[index][1];
        lightRgbInnerR[ii][2] = rgbInnerR[index][2];
        lightRgbInnerR[ii][3] = rgbInnerR[index][3];
    }

    bx::memCopy(s_uniforms.m_lightRgbInnerR, lightRgbInnerR, MAX_NUM_LIGHTS * 4*sizeof(float) );

    vplaneMesh.load(s_vplaneVertices, BX_COUNTOF(s_vplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );

    programColorTexture    = loadProgram("vs_stencil_color_texture",    "fs_stencil_color_texture"   );
    flareTex      = loadTexture("textures/flare.dds");

    lightPosRadius[0][0] = 0.0f;
    lightPosRadius[0][1] = 20.0f;
    lightPosRadius[0][2] = -20.0f;
    lightPosRadius[0][3] = 20.0f;

}

void Light::shutdown() {
    vplaneMesh.unload();
    bgfx::destroy(programColorTexture);
    bgfx::destroy(flareTex);
}

void Light::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    bx::Vec3 reflected = bx::mul(bx::load<bx::Vec3>(lightPosRadius[0]), reflectMtx);
    bx::store(&s_uniforms.m_lightPosRadius[0], reflected);
    s_uniforms.m_lightPosRadius[0][3] = lightPosRadius[0][3];

    setLight();

}

void Light::setLight() {
    bx::memCopy(s_uniforms.m_lightPosRadius, lightPosRadius, 4*sizeof(float) );
}

void Light::setViewState(ViewState VS) {
    viewState = VS;
}


void Light::drawSubmit() {
    const float lightScale[3] = { 1.5f, 1.5f, 1.5f };
    float lightMtx[16];

    s_uniforms.m_color[0] = lightRgbInnerR[0][0];
    s_uniforms.m_color[1] = lightRgbInnerR[0][1];
    s_uniforms.m_color[2] = lightRgbInnerR[0][2];

    mtxBillboard(lightMtx, viewState.m_view, lightPosRadius[0], lightScale);
    vplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_7
            , lightMtx
            , programColorTexture
            , s_renderStates[RenderState::Custom_BlendLightTexture]
            , flareTex
            , s_uniforms.m_color
    );
}