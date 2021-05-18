//
// Created by carol on 2021-05-13.
//

#ifndef D7049E_CUBE_H
#define D7049E_CUBE_H

#include "object.h"
#include "../observer/observer.h"

namespace {
    class Cube : public Object, public Observer {
    public:
        Cube(float color[4], reactphysics3d::RigidBody* body);

        void reflectSubmit() override;

        void drawSubmit() override;

        void update(int id) override;
    };
}

#endif //D7049E_CUBE_H
