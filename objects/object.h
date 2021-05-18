//
// Created by Wilma on 05/05/2021.
//

#pragma once
#include "reactphysics3d/reactphysics3d.h"
class Object {
public:
    //virtual void init(float position[3], float color[4]) = 0;
    virtual void shutdown() = 0;
    virtual void reflectSubmit() = 0;
    virtual void drawSubmit() = 0;
    reactphysics3d::RigidBody* physicsBody;
    bool isPickabel;
};
