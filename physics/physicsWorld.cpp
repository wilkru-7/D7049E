//
// Created by carol on 2021-05-10.
//

#include "physicsWorld.h"
#include <random>
/**
 * Initializes PhysicsWorld without randomized positions for trees
 * @param numAndroids
 * @param numFloors
 * @param numLights
 * @param numTrees
 * @param numCubes
 * @param numHouses
 */
void PhysicsWorld::init(int numAndroids, int numFloors, int numLights, int numTrees, int numCubes, int numHouses) {
    init(false, true, numAndroids, numFloors, numLights, numTrees, numCubes, numHouses);
}
/**
 * Initializes PhysicsWorld with option to randomize the positions for trees
 * @param treesRandom
 * @param cubesRandom
 * @param numAndroids
 * @param numFloors
 * @param numLights
 * @param numTrees
 * @param numCubes
 * @param numHouses
 */
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
    createFloors(treesRandom, numFloors);
    createLights(numLights);
    createHouses(numHouses);
}

/**
 * Creates physics objects for houses
 * and stores them in a vector
 * @param num number of houses
 */
void PhysicsWorld::createHouses(int num) {
    reactphysics3d::BoxShape *houseShape = physicsCommon.createBoxShape(rp3d::Vector3(10.0,10.0,10.0));
    for (int i = 0; i < num; ++i) {
        houses.push_back(createPhysicsObj(rp3d::Vector3(5.0, 15.0, 0.0), houseShape, reactphysics3d::BodyType::STATIC));
    }
}
/**
 * Creates physic objects for floors
 * and stores them in a vector
 * @param num number of floors
 */
void PhysicsWorld::createFloors(int num) {
    reactphysics3d::BoxShape *floorBox = physicsCommon.createBoxShape(rp3d::Vector3(20.0, 0.01, 20.0));
    for (int i = 0; i < num; ++i) {
        floors.push_back(
                createPhysicsObj(reactphysics3d::Vector3(0.0, 0.0, 0.0), floorBox, reactphysics3d::BodyType::STATIC));
    }
}
/**
 * Creates physic objects for lights
 * and stores them in a vector
 * @param num number of lights
 */
void PhysicsWorld::createLights(int num) {
    reactphysics3d::BoxShape *lightBox = physicsCommon.createBoxShape(rp3d::Vector3(0.1, 0.1, 0.1));
    for (int i = 0; i < num; ++i) {
        lights.push_back(createPhysicsObj(reactphysics3d::Vector3(0.0, 20.0, 0.0), lightBox,
                                 reactphysics3d::BodyType::KINEMATIC));
    }
}
/**
 * Creates physics objects for androids
 * and stores them in a vector
 * @param num number of androids
 */
void PhysicsWorld::createAndroids(int num) {
    reactphysics3d::BoxShape *androidBox = physicsCommon.createBoxShape(rp3d::Vector3(1.8, 1.8, 1.8));
    for(int i = 0; i < num; ++i) {
        androids.push_back(createPhysicsObj(reactphysics3d::Vector3(0.0,1.8,0.0), androidBox, reactphysics3d::BodyType::DYNAMIC));
        androids.back()->enableGravity(true);
        androids.back()->setMass(40);
    }
}
/**
 * Creates physics objects for cubes
 * and stores them in a vector
 * @param num number of cubes
 */
void PhysicsWorld::createCubes(int num) {
    reactphysics3d::BoxShape *cubeBox = physicsCommon.createBoxShape(rp3d::Vector3(1.5, 1.5, 1.5));
    for(int i = 0; i < num; ++i) {
        //cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(randomize(-10,10),0.0,randomize(-10,10)), cubeBox, reactphysics3d::BodyType::DYNAMIC));
        cubes.push_back(createPhysicsObj(reactphysics3d::Vector3(randomize(37,47),0.0,randomize(-10,10)), cubeBox, reactphysics3d::BodyType::DYNAMIC));
        cubes.back()->setIsAllowedToSleep(true);
        //cubes.back()->enableGravity(true);
    }
}
/**
 * Creats physics objects for trees
 * and stores them in a vector
 * @param num number of trees
 */
void PhysicsWorld::createTrees(int num) {
    reactphysics3d::BoxShape *treeBox = physicsCommon.createBoxShape(rp3d::Vector3(1.5, 10.0, 1.5));
    for(int i = 0; i < num; ++i) {
        trees.push_back(createPhysicsObj(reactphysics3d::Vector3(randomize(-18,18),0.0,randomize(-18,18)), treeBox, reactphysics3d::BodyType::STATIC));
    }
}
/**
 * Creates physics objects for cubes
 * with the option to randomize the positions for cubes.
 * @param random if set to true positions for cubes are randomized
 * @param num number of cubes
 */
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
/**
 * Creates physics objects for trees
 * with the option to randomize the positions for trees.
 * @param random if set to true positions for trees are randomized
 * @param num number of trees
 */
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
/**
 * Creates physics objects for floors
 * with the option to randomize the positions for floors
 * @param random if set to true positions for floors are randomized
 * @param num number of floors
 */
void PhysicsWorld::createFloors(bool random, int num) {
    reactphysics3d::BoxShape *floorBox = physicsCommon.createBoxShape(rp3d::Vector3(20.0, 0.01, 20.0));
    if (random) {
        createFloors(num);
    } else {
        floors.push_back(createPhysicsObj(reactphysics3d::Vector3(0.0,0.0,0.0), floorBox, reactphysics3d::BodyType::STATIC));
        floors.push_back(createPhysicsObj(reactphysics3d::Vector3(42.0,0.0,0.0), floorBox, reactphysics3d::BodyType::STATIC));
        floors.push_back(createPhysicsObj(reactphysics3d::Vector3(-42.0,0.0,0.0), floorBox, reactphysics3d::BodyType::STATIC));
    }
}
/**
 * Helper function to randomize numbers
 * @param min lowest value for random numbers
 * @param max highest value for random number
 * @return random number
 */
float PhysicsWorld::randomize(float min, float max) {
    std::random_device rd;
    std::default_random_engine eng(rd());
    std::uniform_real_distribution<> distr(min, max);
    return distr(eng);
}
/**
 * Helper function for creating physics object
 * @param pos position for the physics object
 * @param shape shape for the physics object
 * @param type type for the physics object
 * @return physicsObject
 */
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
/**
 * Destroying all physics objects
 */
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
/**
 * Update the state of the physicsworld with
 * specific time step
 */
void PhysicsWorld::update() {
    world->update(1.0 / 60.0);
}