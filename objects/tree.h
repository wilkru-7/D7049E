//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_TREE_H
#define D7049E_TREE_H

#endif //D7049E_TREE_H

#include "../resources.h"
#include <reactphysics3d/reactphysics3d.h>
#include "object.h"

namespace {
    class Tree: public Object {
    public:
        Tree(float color[4], reactphysics3d::RigidBody* body);

        void Tree::shutdown();

        void Tree::reflectSubmit();

        void Tree::drawSubmit();

        Mesh treeMesh;
        float treeMtx[16];
        bgfx::ProgramHandle programColorLighting;
        //reactphysics3d::RigidBody* treePhysics;
        float color[4];
    };
}