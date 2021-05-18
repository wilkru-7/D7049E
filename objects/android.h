//
// Created by carol on 2021-04-30.
//

#ifndef D7049E_ANDROID_H
#define D7049E_ANDROID_H

#include "object.h"
#include "../observer/observer.h"
#include "inventory.h"

namespace {
    class Android: public Object, public Observer {
    public:
        Android(float color[4],  reactphysics3d::RigidBody* body);

        void shutdown() override;

        void reflectSubmit() override;

        void drawSubmit() override;

        void updateRot(float rot);

        void update(int id) override;

        void setTransform(reactphysics3d::Vector3 newPos);

        float position[3];
        float velocity;
    };
}

#endif //D7049E_ANDROID_H
