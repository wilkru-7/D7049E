//
// Created by carol on 2021-05-01.
//

#include "floor.h"


Floor::Floor(float col[4], reactphysics3d::RigidBody* body) {
    physicsBody = body;
    isPickabel = false;

    physicsBody->getCollider(0)->getCollisionShape();
    bx::mtxSRT(floorMtx
            , 20.0f  //scaleX
            , 1.0f  //scaleY
            , 20.0f  //scaleZ
            , 0.0f   //rotX
            , 0.0f   //rotY
            , 0.0f   //rotZ
            , physicsBody->getTransform().getPosition().x  //translateX
            , physicsBody->getTransform().getPosition().y   //translateY
            , physicsBody->getTransform().getPosition().z   //translateZ
    );

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];

    hplaneMesh.load(s_hplaneVertices, BX_COUNTOF(s_hplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );
    programTextureLighting = loadProgram("vs_stencil_texture_lighting", "fs_stencil_texture_lighting");
    programColorBlack      = loadProgram("vs_stencil_color",            "fs_stencil_color_black"     );
    fieldstoneTex = loadTexture("textures/fieldstone-rgba.dds");

}

void Floor::shutdown() {
    hplaneMesh.unload();
}

void Floor::drawSubmit() {
    /*reactphysics3d::Transform transform = physicsBody->getTransform();
    transform.getOpenGLMatrix(floorMtx);*/
    //floorMtx = bgfx::mul(floorMtx, scalingMatrix);

    /*scalingMatrix[12] = physicsBody->getTransform().getPosition().x;
    scalingMatrix[13] = physicsBody->getTransform().getPosition().y;
    scalingMatrix[14] = physicsBody->getTransform().getPosition().z;*/
    /*bx::mtxMul(floorMtx, scalingMatrix, floorMtx);
    std::cout << floorMtx << std::endl;*/

    hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_0
            , floorMtx
            , programColorBlack
            , s_renderStates[RenderState::StencilReflection_CraftStencil]
            , s_uniforms.m_color
    );
}

void Floor::reflectSubmit() {
    hplaneMesh.submit(RENDER_VIEWID_RANGE1_PASS_2
            , floorMtx
            , programTextureLighting
            , s_renderStates[RenderState::StencilReflection_BlendPlane]
            , fieldstoneTex
            , s_uniforms.m_color
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