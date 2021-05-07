//
// Created by carol on 2021-04-30.
//

#include "common.h"
#include "bgfx_utils.h"
#include "android.h"

void Android::init(float position[3], float col[4], reactphysics3d::RigidBody* body) {
    androidPhysics = body;

    /*bx::mtxSRT(androidMtx
            , 2.0f
            , 2.0f
            , 2.0f
            , 0.0f
            , 0.5f
            , 0.0f
            , 0.0f
            , 5.0f
            , 0.0f
    );*/



    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];

    androidMesh.load("meshes/android.bin");
    programColorLighting   = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );

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
    //float blue[4] = {0.0f,0.0f,1.0f,1.0f};
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

void Android::updateMtx(float x, float y, float z) {
    androidMtx[12] = x;
    androidMtx[13] = y;
    androidMtx[14] = z;
}

void Android::update(float newPos[3]) {
/*    androidMtx[12] = androidMtx[12] + newPos[0];
    androidMtx[13] = androidMtx[13] + newPos[1];
    androidMtx[14] = androidMtx[14] + newPos[2];*/
    rp3d::Transform currTransform = androidPhysics->getTransform();
    reactphysics3d::Vector3 currPos = currTransform.getPosition();
    currTransform.setPosition(reactphysics3d::Vector3(currPos.x + newPos[0], currPos.y + newPos[1], currPos.z + newPos[2]));
    androidPhysics->setTransform(currTransform);
}

float * Android::getMtx() {
    return androidMtx;
}
