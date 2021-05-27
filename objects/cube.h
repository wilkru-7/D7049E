//
// Created by carol on 2021-05-13.
//

#ifndef D7049E_CUBE_H
#define D7049E_CUBE_H

#include "object.h"
#include "../observer/observer.h"

/**
 * Class for the dynamic object representing a cube, inherit object and observer
 */
namespace {
    class Cube : public Object, public Observer {
    public:
        Cube(float color[4], reactphysics3d::RigidBody* body);

        void reflectSubmit() override;

        void drawSubmit() override;

        void update(int id) override;

        void updatePos();

        bool goLeft;
    };
}

#endif //D7049E_CUBE_H
