//
// Created by carol on 2021-04-30.
//

#include "common.h"
#include "bgfx_utils.h"
#include "android.h"

Android::Android(float col[4], reactphysics3d::RigidBody* body) {
    physicsBody = body;

    color[0] = col[0];
    color[1] = col[1];
    color[2] = col[2];
    color[3] = col[3];

    velocity = 0.25f;
    mesh.load("meshes/android.bin");
    programColorLighting = loadProgram("vs_stencil_color_lighting", "fs_stencil_color_lighting");
}

void Android::shutdown() {
    mesh.unload();
    bgfx::destroy(programColorLighting);
}

void Android::reflectSubmit() {
    float reflectMtx[16];
    mtxReflected(reflectMtx, { 0.0f, 0.01f, 0.0f }, { 0.0f, 1.0f, 0.0f });

    float mtxReflectedAndroid[16];
    bx::mtxMul(mtxReflectedAndroid, mtx, reflectMtx);
    mesh.submit(RENDER_VIEWID_RANGE1_PASS_1
            , mtxReflectedAndroid
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawReflected]
            , color
    );
}

void Android::drawSubmit() {
    reactphysics3d::Transform transform = physicsBody->getTransform();
    transform.getOpenGLMatrix(mtx);

    mesh.submit(RENDER_VIEWID_RANGE1_PASS_3
            , mtx
            , programColorLighting
            , s_renderStates[RenderState::StencilReflection_DrawScene]
            , color
    );
}

void Android::updateRot(float rot) {
    bx::mtxSRT(mtx
            , 2.0f
            , 2.0f
            , 2.0f
            , 0.0f
            , rot
            , 0.0f
            , mtx[12]
            , 5.0f
            , mtx[14]
    );
}

void Android::update(int id) {
    rp3d::Transform currTransform = physicsBody->getTransform();
    reactphysics3d::Vector3 currPos = currTransform.getPosition();
    switch(id) {
        case 11: setTransform(reactphysics3d::Vector3(-velocity, 0.0, velocity));
                break;
        case 12: setTransform(reactphysics3d::Vector3(velocity, 0.0, velocity));
                break;
        case 13: setTransform(reactphysics3d::Vector3(-velocity, 0.0, -velocity));
                break;
        case 14: setTransform(reactphysics3d::Vector3(velocity, 0.0, -velocity));
                break;
        case 15: setTransform(reactphysics3d::Vector3(-velocity - 0.1, 0.0, 0.0));
                break;
        case 16: setTransform(reactphysics3d::Vector3(0.0, 0.0, -velocity - 0.1));
                break;
        case 17: setTransform(reactphysics3d::Vector3(velocity + 0.1, 0.0, 0.0));
                break;
        case 18: setTransform(reactphysics3d::Vector3(0.0, 0.0, velocity + 0.1));
                break;
        case 19:{
            if (currPos.y < 2.0f){
                physicsBody->applyForceToCenterOfMass(rp3d::Vector3(0.0,1000.0,0.0));
            }
            break;
        }
        case 22: {
            if(currPos.y < 1.8) {
                currTransform.setPosition(reactphysics3d::Vector3(0.0, 5.0, 0.0));
                physicsBody->setTransform(currTransform);
            }
            break;
        }
        /*case 111:
            inventory->pickFromInventory();
            break;
        case 110: {
            Object *item = inventory->objects->back();
            if (item->isPickabel) {
                inventory->addToInventory(item);
                inventory->objects->remove(item);
                std::cout << "Pick up" << std::endl;
            }
            break;
        }*/
        default: setTransform(reactphysics3d::Vector3(0.0, 0.0, 0.0));
                break;
    }
}

void Android::setTransform(reactphysics3d::Vector3 newPos) {
    rp3d::Transform currTransform = physicsBody->getTransform();
    reactphysics3d::Vector3 currPos = currTransform.getPosition();
    currTransform.setPosition(reactphysics3d::Vector3(currPos.x + newPos.x, currPos.y + newPos.y, currPos.z + newPos.z));
    physicsBody->setTransform(currTransform);
}