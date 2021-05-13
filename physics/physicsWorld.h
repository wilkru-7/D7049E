//
// Created by carol on 2021-05-10.
//

#ifndef D7049E_PHYSICSWORLD_H
#define D7049E_PHYSICSWORLD_H

#include <reactphysics3d/reactphysics3d.h>

namespace {
    class PhysicsWorld {
    public:
        void PhysicsWorld::init();
        reactphysics3d::RigidBody* PhysicsWorld::createPhysicsObj(reactphysics3d::Vector3 pos, reactphysics3d::CollisionShape* shape, reactphysics3d::BodyType type);
        void PhysicsWorld::shutdown();
        void PhysicsWorld::update();

        reactphysics3d::PhysicsWorld::WorldSettings settings;
        reactphysics3d::PhysicsCommon physicsCommon;
        reactphysics3d::PhysicsWorld* world;
        reactphysics3d::Transform transform;
        reactphysics3d::BoxShape* androidBox;
        reactphysics3d::BoxShape* floorBox;
        reactphysics3d::BoxShape* treeBox;
        reactphysics3d::BoxShape* cubeBox;
        reactphysics3d::RigidBody* android;
        //reactphysics3d::RigidBody* tree;
        reactphysics3d::RigidBody* tree1;
        reactphysics3d::RigidBody* tree2;
        reactphysics3d::RigidBody* tree3;
        reactphysics3d::RigidBody* tree4;
        reactphysics3d::RigidBody* floor;
        reactphysics3d::RigidBody* cube;
        reactphysics3d::Quaternion orientation;
        reactphysics3d::Collider* androidCollider;
        reactphysics3d::Collider* treeCollider;
        reactphysics3d::Collider* floorCollider;

    };
}

#endif //D7049E_PHYSICSWORLD_H
