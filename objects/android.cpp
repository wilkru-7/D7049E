//
// Created by carol on 2021-04-30.
//

#include "common.h"
#include "bgfx_utils.h"
#include "android.h"

void Android::init() {
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

    androidMesh.load("meshes/android.bin");

}

void Android::shutdown() {
    androidMesh.unload();
}

void Android::reflectSubmit(bgfx::ProgramHandle programColorLighting) {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedAndroid[16];
    bx::mtxMul(mtxReflectedAndroid, androidMtx, reflectMtx);
    androidMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedAndroid
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
    );
}

void Android::drawSubmit(bgfx::ProgramHandle programColorLighting) {
    androidMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , androidMtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
    );
}

void Android::updateMtx(float x, float z, float rot) {
    bx::mtxSRT(androidMtx
            , 2.0f
            , 2.0f
            , 2.0f
            , 0.0f
            , rot
            , 0.0f
            , androidMtx[12] + x
            , 5.0f
            , androidMtx[14] + z
    );
}

void Android::updatePhysicsMtx(float x, float y, float z) {
    androidMtx[12] = x;
    androidMtx[13] = y;
    androidMtx[14] = z;
}

float * Android::getMtx() {
    return androidMtx;
}
