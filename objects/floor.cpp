//
// Created by carol on 2021-05-01.
//

#include "floor.h"


void Floor::init() {
    bx::mtxSRT(floorMtx
            , 20.0f  //scaleX
            , 20.0f  //scaleY
            , 20.0f  //scaleZ
            , 0.0f   //rotX
            , 0.0f   //rotY
            , 0.0f   //rotZ
            , 0.0f   //translateX
            , 0.0f   //translateY
            , 0.0f   //translateZ
    );

    bx::mtxSRT(floorBottomMtx
            , 20.0f  //scaleX
            , 20.0f  //scaleY
            , 20.0f  //scaleZ
            , 0.0f   //rotX
            , 0.0f   //rotY
            , 0.0f   //rotZ
            , 0.0f   //translateX
            , -0.1f  //translateY
            , 0.0f   //translateZ
    );

    hplaneMesh.load(s_hplaneVertices, BX_COUNTOF(s_hplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );
    vplaneMesh.load(s_vplaneVertices, BX_COUNTOF(s_vplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );

}

void Floor::shutdown() {
    hplaneMesh.unload();
    vplaneMesh.unload();
}

void Floor::drawSubmit(bgfx::ProgramHandle programColorBlack) {
    hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_0
            , floorMtx
            , programColorBlack
            , s_renderStates[RenderState::StencilReflection_CraftStencil]
    );
}

void Floor::blendSubmit(bgfx::ProgramHandle programTextureLighting, bgfx::TextureHandle fieldstoneTex) {
    hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_2
            , floorMtx
            , programTextureLighting
            , s_renderStates[RenderState::StencilReflection_BlendPlane]
            , fieldstoneTex
    );
}

void Floor::drawBottomSubmit(bgfx::ProgramHandle programTexture, bgfx::TextureHandle figureTex) {
    hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_7
            , floorBottomMtx
            , programTexture
            , s_renderStates[RenderState::Custom_DrawPlaneBottom]
            , figureTex
    );
}