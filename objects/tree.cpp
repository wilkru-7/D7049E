//
// Created by carol on 2021-05-01.
//

#include "tree.h"


void Tree::init(float pos[3], float col[4]) {

    treeMesh.load("meshes/polytree.bin");
    programColorLighting   = loadProgram("vs_stencil_color_lighting",   "fs_stencil_color_lighting"  );

    bx::mtxSRT(treeMtx
            , 0.5f
            , 0.5f
            , 0.5f
            , 0.0f
            , 0.0f
            , 0.0f
            , pos[0]
            , pos[1]
            , pos[2]
    );

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];
}

void Tree::shutdown() {
    treeMesh.unload();
}

void Tree::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedTree[16];

    bx::mtxMul(mtxReflectedTree, treeMtx, reflectMtx);
    treeMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedTree
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
            , color
    );
}

void Tree::drawSubmit() {
    treeMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , treeMtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
            , color
    );
}