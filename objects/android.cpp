//
// Created by carol on 2021-04-30.
//

#include "common.h"
#include "bgfx_utils.h"
#include "android.h"

void Android::init(float col[4], reactphysics3d::RigidBody* body) {
    androidPhysics = body;

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];

    androidMesh.load("meshes/android.bin");
    programColorLighting = loadProgram("vs_stencil_color_lighting", "fs_stencil_color_lighting");
}

void Android::shutdown() {
    androidMesh.unload();
    bgfx::destroy(programColorLighting);
}

void Android::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedAndroid[16];
    bx::mtxMul(mtxReflectedAndroid, androidMtx, reflectMtx);
    androidMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedAndroid
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
            , color
    );
}

void Android::drawSubmit() {
    reactphysics3d::Transform transform = androidPhysics->getTransform();
    transform.getOpenGLMatrix(androidMtx);

    androidMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , androidMtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
            , color
    );
}

void Android::updateRot(float rot) {
    bx::mtxSRT(androidMtx
            , 2.0f
            , 2.0f
            , 2.0f
            , 0.0f
            , rot
            , 0.0f
            , androidMtx[12]
            , 5.0f
            , androidMtx[14]
    );
}

void Android::update(int id) {
    float newPos[3];
    switch(id) {
        case 1: newPos[0] = -0.35f;
                newPos[1] = 0.0f;
                newPos[2] = 0.35f;
                break;
        case 2: newPos[0] = 0.35f;
                newPos[1] = 0.0f;
                newPos[2] = 0.35f;
                break;
        case 3: newPos[0] = -0.35f;
                newPos[1] = 0.0f;
                newPos[2] = -0.35f;
                break;
        case 4: newPos[0] = 0.35f;
                newPos[1] = 0.0f;
                newPos[2] = -0.35f;
                break;
        case 5: newPos[0] = -0.5f;
                newPos[1] = 0.0f;
                newPos[2] = 0.0f;
                break;
        case 6: newPos[0] = 0.0f;
                newPos[1] = 0.0f;
                newPos[2] = -0.5f;
                break;
        case 7: newPos[0] = 0.5f;
                newPos[1] = 0.0f;
                newPos[2] = 0.0f;
                break;
        case 8: newPos[0] = 0.0f;
                newPos[1] = 0.0f;
                newPos[2] = 0.5f;
                break;
        /*case 9: newPos[0] = 0.0f;
                newPos[1] = 0.0f;
                newPos[2] = 0.5f;
                break;*/
        default:newPos[0] = 0.0f;
                newPos[1] = 0.0f;
                newPos[2] = 0.0f;
                break;
    }
    rp3d::Transform currTransform = androidPhysics->getTransform();
    reactphysics3d::Vector3 currPos = currTransform.getPosition();
    currTransform.setPosition(reactphysics3d::Vector3(currPos.x + newPos[0], currPos.y + newPos[1], currPos.z + newPos[2]));
    androidPhysics->setTransform(currTransform);
}