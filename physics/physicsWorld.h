//
// Created by carol on 2021-05-10.
//

#ifndef D7049E_PHYSICSWORLD_H
#define D7049E_PHYSICSWORLD_H

#include <reactphysics3d/reactphysics3d.h>
#include <vector>

namespace {
    /**
     * Class for physicsWorld
     * contains all physics objects
     */
    class PhysicsWorld {
    public:
        void init(int androids, int floors, int lights, int trees, int cubes, int houses);
        void init(bool treesRandom, bool cubesRandom,int androids, int floors, int lights, int trees, int cubes, int houses);

        //void createObjectsList(std::vector<reactphysics3d::RigidBody*>* list, rp3d::Vector3 dimensions, rp3d::Vector3 position, reactphysics3d::BodyType type, int num);

        void createAndroids(int num);
        void createFloors(int num);
        void createLights(int num);
        void createCubes(int num);
        void createTrees(int num);
        void createHouses(int num);

        reactphysics3d::RigidBody* createPhysicsObj(reactphysics3d::Vector3 pos, reactphysics3d::CollisionShape* shape, reactphysics3d::BodyType type);
        void shutdown();
        void update();
        static float randomize(float min, float max);

        // Extras
        void createTrees(bool random, int num);
        void createCubes(bool random, int num);
        void createFloors(bool random, int num);

        reactphysics3d::PhysicsWorld::WorldSettings settings;
        reactphysics3d::PhysicsCommon physicsCommon;
        reactphysics3d::PhysicsWorld* world;

        std::vector<reactphysics3d::RigidBody*> androids;
        std::vector<reactphysics3d::RigidBody*> floors;
        std::vector<reactphysics3d::RigidBody*> lights;
        std::vector<reactphysics3d::RigidBody*> houses;
        std::vector<reactphysics3d::RigidBody*> trees;
        std::vector<reactphysics3d::RigidBody*> cubes;

    };
}

#endif //D7049E_PHYSICSWORLD_H
