//
// Created by carol on 2021-05-10.
//

#include "physicsWorld.h"
#include <random>

void PhysicsWorld::init(int androids, int floors, int lights, int trees, int cubes, int houses) {
    init(false, true, androids, floors, lights, trees, cubes, houses);
}

void PhysicsWorld::init(bool treesRandom, bool cubesRandom, int numAndroids, int numFloors, int numLights, int numTrees, int numCubes, int numHouses) {
    // physics setup https://www.reactphysics3d.com/usermanual.html#x1-4500011
    settings.defaultVelocitySolverNbIterations = 20;
    settings.isSleepingEnabled = false;
    settings.gravity = reactphysics3d::Vector3(0, rp3d::decimal(-9.81), 0);

    world = physicsCommon.createPhysicsWorld(settings);
    world->setIsDebugRenderingEnabled(true);

    reactphysics3d::DebugRenderer& debugRenderer = world->getDebugRenderer();
    debugRenderer.setIsDebugItemDisplayed(rp3d::DebugRenderer::DebugItem::CONTACT_POINT, true);

    createAndroids(numAndroids);
    createTrees(treesRandom, numTrees);
    createCubes(cubesRandom, numCubes);
    createFloors(numFloors);
    createLights(numLights);
    createHouses(numHouses);
}

/*void PhysicsWorld::createObjectsList(std::vector<reactphysics3d::RigidBody*>* list, rp3d::Vector3 dimensions, rp3d::Vector3 position, reactphysics3d::BodyType type, int num) {
    reactphysics3d::BoxShape *shape = physicsCommon.createBoxShape(dimensions);
    for (int i = 0; i < num; ++i) {
        list->push_back(createPhysicsObj(position, shape, type));
    }
}*/

void PhysicsWorld::createHouses(int num) {
    reactphysics3d::BoxShape *houseShape = physicsCommon.createBoxShape(rp3d::Vector3(10.0,10.0,10.0));
    for (int i = 0; i < num; ++i) {
        houses.push_back(createPhysicsObj(rp3d::Vector3(5.0, 15.0, 0.0), houseShape, reactphysics3d::BodyType::STATIC));
    }
}
void PhysicsWorld::createFloors(int num) {
    reactphysics3d::BoxShape *floorBox = physicsCommon.createBoxShape(rp3d::Vector3(20.0, 0.01, 20.0));
    for (int i = 0; i < num; ++i) {
        floors.push_back(
                createPhysicsObj(reactphysics3d::Vector3(0.0, 0.0, 0.0), floorBox, reactphysics3d::BodyType::STATIC));
    }
}

void PhysicsWorld::createLights(int num) {
    reactphysics3d::BoxShape *lightBox = physicsCommon.createBoxShape(rp3d::Vector3(0.1, 0.1, 0.1));
    for (int i = 0; i < num; ++i) {
        lights.push_back(createPhysicsObj(reactphysics3d::Vector3(0.0, 20.0, 0.0), lightBox,
                                 reactphysics3d::BodyType::KINEMATIC));
    }
}

void PhysicsWorld::createAndroids(int num) {
    reactphysics3d::BoxShape *androidBox = physicsCommon.createBoxShape(rp3d::Vector3(2.0, 1.8, 2.0));
    for(int i = 0; i < num; ++i) {
        androids.push_back(createPhysicsObj(reactphysics3d::Vector3(0.0,1.8,0.0), androidBox, reactphysics3d::BodyType::DYNAMIC));
        androids.back()->enableGravity(true);
    }
}

void PhysicsWorld::createCubes(int num) {
    reactphysics3d::BoxShape *cubeBox = physicsCommon.createBoxShape(rp3d::Vector3(1.5, 1.5, 1.5));
    for(int i = 0; i < num; ++i) {
        cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(randomize(-10,10),0.0,randomize(-10,10)), cubeBox, reactphysics3d::BodyType::DYNAMIC));
        cubes.back()->setIsAllowedToSleep(true);
        //cubes.back()->enableGravity(true);
    }
}

void PhysicsWorld::createTrees(int num) {
    reactphysics3d::BoxShape *treeBox = physicsCommon.createBoxShape(rp3d::Vector3(1.5, 10.0, 1.5));
    for(int i = 0; i < num; ++i) {
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(randomize(-18,18),0.0,randomize(-18,18)), treeBox, reactphysics3d::BodyType::STATIC));
    }
}

void PhysicsWorld::createCubes(bool random, int num) {
    reactphysics3d::BoxShape *cubeBox = physicsCommon.createBoxShape(rp3d::Vector3(1.5, 1.5, 1.5));
    if (random) {
        createCubes(num);
    } else {
        cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(10.0,0.0,10.0), cubeBox, reactphysics3d::BodyType::DYNAMIC));
        cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(-10.0,0.0,10.0), cubeBox, reactphysics3d::BodyType::DYNAMIC));
        cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(10.0,0.0,-10.0), cubeBox, reactphysics3d::BodyType::DYNAMIC));
        cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(-10.0,0.0,-10.0), cubeBox, reactphysics3d::BodyType::DYNAMIC));
    }
}

void PhysicsWorld::createTrees(bool random, int num) {
    reactphysics3d::BoxShape *treeBox = physicsCommon.createBoxShape(rp3d::Vector3(1.5, 10.0, 1.5));
    if (random) {
        createTrees(num);
    } else {
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(14.0,0.0,14.0), treeBox, reactphysics3d::BodyType::STATIC));
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(-14.0,0.0,14.0), treeBox, reactphysics3d::BodyType::STATIC));
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(14.0,0.0,-14.0), treeBox, reactphysics3d::BodyType::STATIC));
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(-14.0,0.0,-14.0), treeBox, reactphysics3d::BodyType::STATIC));
    }
}

float PhysicsWorld::randomize(float min, float max) {
    std::random_device rd;
    std::default_random_engine eng(rd());
    std::uniform_real_distribution<> distr(min, max);
    return distr(eng);
}

reactphysics3d::RigidBody* PhysicsWorld::createPhysicsObj(reactphysics3d::Vector3 pos, reactphysics3d::CollisionShape* shape, reactphysics3d::BodyType type) {
    reactphysics3d::Quaternion orientation = reactphysics3d::Quaternion::identity();
    reactphysics3d::Transform transform = reactphysics3d::Transform::identity();
    reactphysics3d::Transform tf(pos, orientation);
    reactphysics3d::RigidBody* obj = world->createRigidBody(tf);

    obj->setType(type);
    reactphysics3d::Collider* collider = obj->addCollider(shape, transform);

    reactphysics3d::Material& material = collider->getMaterial();
    material.setBounciness(0.0);
    return obj;
}

void PhysicsWorld::shutdown() {
    for(auto & tree : trees) {
        world->destroyRigidBody(tree);
    }
    for(auto & cube : cubes) {
        world->destroyRigidBody(cube);
    }
    for(auto & android : androids) {
        world->destroyRigidBody(android);
    }
    for(auto & house : houses) {
        world->destroyRigidBody(house);
    }
    for(auto & light : lights) {
        world->destroyRigidBody(light);
    }
    for(auto & floor : floors) {
        world->destroyRigidBody(floor);
    }
    physicsCommon.destroyPhysicsWorld(world);
}

void PhysicsWorld::update() {
    world->update(1.0 / 60.0);
}