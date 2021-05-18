//
// Created by carol on 2021-05-13.
//

#include "cube.h"

Cube::Cube(float col[4], reactphysics3d::RigidBody* body) {
    physicsBody = body;
    isPickabel = true;

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];

    programColorLighting = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );
    mesh.load(s_cubeVertices, BX_COUNTOF(s_cubeVertices), PosNormalTexcoordVertex::ms_layout, s_cubeIndices, BX_COUNTOF(s_cubeIndices) );

    bx::mtxSRT(mtx
            , 1.0f
            , 1.0f
            , 1.0f
            , 0.0f
            , 0.0f
            , 0.0f
            , physicsBody->getTransform().getPosition().x  //translateX
            , physicsBody->getTransform().getPosition().y   //translateY
            , physicsBody->getTransform().getPosition().z   //translateZ
    );
}

void Cube::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedCube[16];
    bx::mtxMul(mtxReflectedCube, mtx, reflectMtx);
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedCube
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
            , color
    );
}

void Cube::drawSubmit() {
    reactphysics3d::Transform transform = physicsBody->getTransform();
    transform.getOpenGLMatrix(mtx);
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , mtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
            , color
    );
}

void Cube::update(int id) {
    //cubePhysics->applyForceToCenterOfMass(rp3d::Vector3(0.0,100.0,0.0));
}