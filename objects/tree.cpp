//
// Created by carol on 2021-05-01.
//

#include "tree.h"

/**
 * Class for the static object representing a Tree, inherit object
 */
Tree::Tree(float col[4], reactphysics3d::RigidBody* body) {
    physicsBody = body;
    type = "Tree";

    mesh.load("meshes/polytree.bin");
    programColorLighting   = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];

    bx::mtxSRT(mtx
            , 0.6f  //scaleX
            , 0.6f  //scaleY
            , 0.6f  //scaleZ
            , 0.0f   //rotX
            , 0.0f   //rotY
            , 0.0f   //rotZ
            , physicsBody->getTransform().getPosition().x  //translateX
            , physicsBody->getTransform().getPosition().y   //translateY
            , physicsBody->getTransform().getPosition().z   //translateZ
    );
}

void Tree::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedTree[16];

    bx::mtxMul(mtxReflectedTree, mtx, reflectMtx);
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedTree
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
            , color
    );
}

void Tree::drawSubmit() {
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , mtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
            , color
    );
}