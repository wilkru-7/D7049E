//
// Created by carol on 2021-05-01.
//

#include "floor.h"

/**
 * Class for the static object representing a floor, inherit object
 */
Floor::Floor(float col[4], reactphysics3d::RigidBody* body) {
    physicsBody = body;
    type = "Floor";

    physicsBody->getCollider(0)->getCollisionShape();
    bx::mtxSRT(mtx
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

    mesh.load(s_hplaneVertices, BX_COUNTOF(s_hplaneVertices), PosNormalTexcoordVertex::ms_layout, s_planeIndices, BX_COUNTOF(s_planeIndices) );
    programTextureLighting = loadProgram("vs_stencil_texture_lighting", "fs_stencil_texture_lighting");
    programColorLighting      = loadProgram("vs_stencil_color",            "fs_stencil_color_black"     );
    fieldstoneTex = loadTexture("textures/fieldstone-rgba.dds");

}

void Floor::drawSubmit() {
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_0
            , mtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_CraftStencil]
            , s_uniforms.m_color
    );
}

void Floor::reflectSubmit() {
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_2
            , mtx
            , programTextureLighting
            , s_renderStates[RenderState::StencilReflection_BlendPlane]
            , fieldstoneTex
            , s_uniforms.m_color
    );
}