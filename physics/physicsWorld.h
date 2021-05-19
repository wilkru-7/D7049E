//
// Created by carol on 2021-05-10.
//

#ifndef D7049E_PHYSICSWORLD_H
#define D7049E_PHYSICSWORLD_H

#include <reactphysics3d/reactphysics3d.h>
#include <vector>

namespace {
    class PhysicsWorld {
    public:
        void init(bool treesAtRandomPos, int numTrees, int numCubes);
        void createAndroids();
        void createFloors();
        void createLights();
        void createCubes(int numCubes);
        void createTrees(bool treesAtRandomPos, int numTrees);
        void createHouses();
        reactphysics3d::RigidBody* createPhysicsObj(reactphysics3d::Vector3 pos, reactphysics3d::CollisionShape* shape, reactphysics3d::BodyType type);
        void shutdown();
        void update();

        reactphysics3d::PhysicsWorld::WorldSettings settings;
        reactphysics3d::PhysicsCommon physicsCommon;
        reactphysics3d::PhysicsWorld* world;
        reactphysics3d::Transform transform;
        reactphysics3d::BoxShape* androidBox;
        reactphysics3d::BoxShape* floorBox;
        reactphysics3d::BoxShape* treeBox;
        reactphysics3d::BoxShape* cubeBox;
        reactphysics3d::RigidBody* android;
        reactphysics3d::RigidBody* house;
        reactphysics3d::RigidBody* tree1;
        reactphysics3d::RigidBody* tree2;
        reactphysics3d::RigidBody* tree3;
        reactphysics3d::RigidBody* tree4;
        reactphysics3d::RigidBody* floor;
        //reactphysics3d::RigidBody* cube;
        reactphysics3d::RigidBody* light;
        reactphysics3d::Quaternion orientation;
        reactphysics3d::Collider* androidCollider;
        reactphysics3d::Collider* treeCollider;
        reactphysics3d::Collider* floorCollider;

        std::vector<reactphysics3d::RigidBody*> trees;
        std::vector<reactphysics3d::RigidBody*> cubes;

    };
}

#endif //D7049E_PHYSICSWORLD_H
