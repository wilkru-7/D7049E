//
// Created by carol on 2021-05-10.
//

#include "physicsWorld.h"
#include <random>

void PhysicsWorld::init(bool treesAtRandomPos, int numTrees, int numCubes) {
    // physics setup https://www.reactphysics3d.com/usermanual.html#x1-4500011
    settings.defaultVelocitySolverNbIterations = 20;
    settings.isSleepingEnabled = false;
    settings.gravity = reactphysics3d::Vector3(0, rp3d::decimal(-9.81), 0);

    world = physicsCommon.createPhysicsWorld(settings);
    world->setIsDebugRenderingEnabled(true);

    reactphysics3d::DebugRenderer& debugRenderer = world->getDebugRenderer();
    debugRenderer.setIsDebugItemDisplayed(rp3d::DebugRenderer::DebugItem::CONTACT_POINT, true);

    createAndroids();
    createTrees(treesAtRandomPos, numTrees);
    createCubes(numCubes);
    createFloors();
    createLights();
    createHouses();
}
void PhysicsWorld::createHouses() {
    reactphysics3d::BoxShape* houseShape = physicsCommon.createBoxShape(rp3d::Vector3(10.0,10.0,10.0));
    house = createPhysicsObj(rp3d::Vector3(5.0,15.0,0.0), houseShape, reactphysics3d::BodyType::STATIC);

}
void PhysicsWorld::createFloors() {
    floorBox = physicsCommon.createBoxShape(rp3d::Vector3(20.0, 0.01, 20.0));
    floor = createPhysicsObj(reactphysics3d::Vector3(0.0,0.0,0.0), floorBox, reactphysics3d::BodyType::STATIC);
}

void PhysicsWorld::createLights() {
    reactphysics3d::BoxShape* lightBox = physicsCommon.createBoxShape(rp3d::Vector3(0.1, 0.1, 0.1));
    light = createPhysicsObj(reactphysics3d::Vector3(0.0,20.0,0.0), lightBox, reactphysics3d::BodyType::KINEMATIC);
}

void PhysicsWorld::createAndroids() {
    androidBox = physicsCommon.createBoxShape(rp3d::Vector3(2.0, 1.8, 2.0));
    android = createPhysicsObj(reactphysics3d::Vector3(0.0,1.8,0.0), androidBox, reactphysics3d::BodyType::DYNAMIC);
    android->enableGravity(true);
}

void PhysicsWorld::createCubes(int numCubes) {
    cubeBox = physicsCommon.createBoxShape(rp3d::Vector3(1.5, 1.5, 1.5));
    //cube = createPhysicsObj(reactphysics3d::Vector3(3.0,1.8,-15.0), cubeBox, reactphysics3d::BodyType::DYNAMIC);
    //cube->enableGravity(true);
    std::random_device rd;
    std::default_random_engine eng(rd());
    std::uniform_real_distribution<> distr(-10.0, 10.0);
    for(int i = 0; i < numCubes; ++i) {
        cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(distr(eng),0.0,distr(eng)), cubeBox, reactphysics3d::BodyType::DYNAMIC));
        cubes.back()->setIsAllowedToSleep(true);
    }
    /*cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(10.0,0.0,10.0), cubeBox, reactphysics3d::BodyType::DYNAMIC));
    cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(-10.0,0.0,10.0), cubeBox, reactphysics3d::BodyType::DYNAMIC));
    cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(10.0,0.0,-10.0), cubeBox, reactphysics3d::BodyType::DYNAMIC));
    cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(-10.0,0.0,-10.0), cubeBox, reactphysics3d::BodyType::DYNAMIC));*/
}

void PhysicsWorld::createTrees(bool treesAtRandomPos, int numTrees) {
    treeBox = physicsCommon.createBoxShape(rp3d::Vector3(1.5, 10.0, 1.5));
    if (treesAtRandomPos) {
        std::random_device rd;
        std::default_random_engine eng(rd());
        std::uniform_real_distribution<> distr(-18.0, 18.0);

        for(int i = 0; i < numTrees; ++i) {
            trees.push_back(createPhysicsObj(reactphysics3d::Vector3(distr(eng),0.0,distr(eng)), treeBox, reactphysics3d::BodyType::STATIC));
        }

    } else {
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(14.0,0.0,14.0), treeBox, reactphysics3d::BodyType::STATIC));
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(-14.0,0.0,14.0), treeBox, reactphysics3d::BodyType::STATIC));
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(14.0,0.0,-14.0), treeBox, reactphysics3d::BodyType::STATIC));
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(-14.0,0.0,-14.0), treeBox, reactphysics3d::BodyType::STATIC));
    }
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
    for(int i = 0; i < trees.size(); ++i) {
        world->destroyRigidBody(trees.at(i));
    }
    for(int i = 0; i < cubes.size(); ++i) {
        world->destroyRigidBody(cubes.at(i));
    }
    /*world->destroyRigidBody(tree1);
    world->destroyRigidBody(tree2);
    world->destroyRigidBody(tree3);
    world->destroyRigidBody(tree4);*/
    world->destroyRigidBody(floor);
    world->destroyRigidBody(android);
    //world->destroyRigidBody(cube);
    physicsCommon.destroyPhysicsWorld(world);
}

void PhysicsWorld::update() {
    world->update(1.0 / 60.0);
}