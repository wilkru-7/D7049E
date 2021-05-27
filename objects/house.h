//
// Created by andre on 2021-05-19.
//

#ifndef D7049E_HOUSE_H
#define D7049E_HOUSE_H

#include "object.h"

/**
 * Class for the static object representing a floor, inherit object
 */
namespace {
    class House : public Object {
    public:
        House(float color[4], reactphysics3d::RigidBody *body);

        void reflectSubmit() override;

        void drawSubmit() override;

        float position[3];
    };
}
#endif //D7049E_HOUSE_H
