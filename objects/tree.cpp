//
// Created by carol on 2021-05-01.
//

#include "tree.h"


void Tree::init(float pos[3]) {
    treeMesh.load("meshes/polytree.bin");
    treePosition[0] = pos[0];
    treePosition[1] = pos[1];
    treePosition[2] = pos[2];

    bx::mtxSRT(treeMtx
            , 0.5f
            , 0.5f
            , 0.5f
            , 0.0f
            , 0.0f
            , 0.0f
            , treePosition[0]
            , treePosition[1]
            , treePosition[2]
    );
}

void Tree::shutdown() {
    treeMesh.unload();
}

void Tree::reflectSubmit(bgfx::ProgramHandle programColorLighting) {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedTree[16];

    bx::mtxMul(mtxReflectedTree, treeMtx, reflectMtx);
    treeMesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedTree
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
    );
}

void Tree::draw(bgfx::ProgramHandle programColorLighting) {
    treeMesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , treeMtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
    );
}