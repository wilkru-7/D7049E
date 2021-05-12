//
// Created by carol on 2021-04-30.
//

#ifndef D7049E_ANDROID_H
#define D7049E_ANDROID_H

#endif //D7049E_ANDROID_H

#include "../resources.h"
#include <reactphysics3d/reactphysics3d.h>
#include "object.h"
#include "../observer/observer.h"

namespace {
    class Android: public Object, public Observer {
    public:
        void Android::init(float color[4],  reactphysics3d::RigidBody* body);

        void Android::shutdown();

        void Android::reflectSubmit();

        void Android::drawSubmit();

        void Android::updateRot(float rot);

        void Android::update(int id);

        reactphysics3d::RigidBody* androidPhysics;
        Mesh androidMesh;
        float androidMtx[16];
        float position[3];
        float velocity;
        bgfx::ProgramHandle programColorLighting;
        float color[4];
    };
}

