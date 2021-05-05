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

    /*bx::mtxSRT(floorBottomMtx
            , 20.0f  //scaleX
            , 20.0f  //scaleY
            , 20.0f  //scaleZ
            , 0.0f   //rotX
            , 0.0f   //rotY
            , 0.0f   //rotZ
            , 0.0f   //translateX
            , -0.1f  //translateY
            , 0.0f   //translateZ
    );*/

    hplaneMesh.load(s_hplaneVertices, BX_COUNTOF(s_hplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );
    programTextureLighting = loadProgram("vs_stencil_texture_lighting", "fs_stencil_texture_lighting");
    programColorBlack      = loadProgram("vs_stencil_color",            "fs_stencil_color_black"     );
    fieldstoneTex = loadTexture("textures/fieldstone-rgba.dds");

}

void Floor::shutdown() {
    hplaneMesh.unload();
}

void Floor::drawSubmit() {
    hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_0
            , floorMtx
            , programColorBlack
            , s_renderStates[RenderState::StencilReflection_CraftStencil]
    );
}

void Floor::blendSubmit() {
    hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_2
            , floorMtx
            , programTextureLighting
            , s_renderStates[RenderState::StencilReflection_BlendPlane]
            , fieldstoneTex
    );
}

/*void Floor::drawBottomSubmit(bgfx::ProgramHandle programTexture, bgfx::TextureHandle figureTex) {
    hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_7
            , floorBottomMtx
            , programTexture
            , s_renderStates[RenderState::Custom_DrawPlaneBottom]
            , figureTex
    );
}*/