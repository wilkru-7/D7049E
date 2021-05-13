//
// Created by carol on 2021-05-13.
//

#include "cube.h"

void Cube::init(float col[4], reactphysics3d::RigidBody* body) {
    cubePhysics = body;

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];

    programColorLighting = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );
    cubeMesh.load(s_cubeVertices, BX_COUNTOF(s_cubeVertices), PosNormalTexcoordVertex::ms_layout, s_cubeIndices, BX_COUNTOF(s_cubeIndices) );

    bx::mtxSRT(cubeMtx
            , 1.0f
            , 1.0f
            , 1.0f
            , 0.0f
            , 0.0f
            , 0.0f
            , cubePhysics->getTransform().getPosition().x  //translateX
            , cubePhysics->getTransform().getPosition().y   //translateY
            , cubePhysics->getTransform().getPosition().z   //translateZ
    );
}

void Cube::shutdown() {
    cubeMesh.unload();
}

void Cube::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedCube[16];
    bx::mtxMul(mtxReflectedCube, cubeMtx, reflectMtx);
    cubeMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedCube
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
            , color
    );
}

void Cube::drawSubmit() {
    cubeMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , cubeMtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
            , color
    );
}