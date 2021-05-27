//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_TREE_H
#define D7049E_TREE_H

#include "object.h"

/**
 * Class for the static object representing a tree, inherit object
 */
namespace {
    class Tree: public Object {
    public:
        Tree(float color[4], reactphysics3d::RigidBody* body);

        void reflectSubmit() override;

        void drawSubmit() override;
    };
}

#endif //D7049E_TREE_H