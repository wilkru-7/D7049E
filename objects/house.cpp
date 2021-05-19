//
// Created by andre on 2021-05-19.
//

#include "house.h"

House::House(float col[4], reactphysics3d::RigidBody* body){
    physicsBody = body;

    mesh.load("meshes/casa.bin");
    programColorLighting   = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];
    bx::mtxSRT(mtx
            , 1.0f  //scaleX
            , 1.0f  //scaleY
            , 1.0f  //scaleZ
            , 0.0f   //rotX
            , 0.0f   //rotY
            , 0.0f   //rotZ
            , physicsBody->getTransform().getPosition().x  //translateX
            , physicsBody->getTransform().getPosition().y   //translateY
            , physicsBody->getTransform().getPosition().z   //translateZ
    );

}
void House::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedHouse[16];

    bx::mtxMul(mtxReflectedHouse, mtx, reflectMtx);
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedHouse
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
            , color
    );
}

void House::drawSubmit() {
    /*reactphysics3d::Transform transform = physicsBody->getTransform();
    transform.getOpenGLMatrix(mtx);*/

    mesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , mtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
            , color
    );
}