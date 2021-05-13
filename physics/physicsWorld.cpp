//
// Created by carol on 2021-05-10.
//

#include "physicsWorld.h"


void PhysicsWorld::init() {
    // physics setup https://www.reactphysics3d.com/usermanual.html#x1-4500011
    settings.defaultVelocitySolverNbIterations = 20;
    settings.isSleepingEnabled = false;
    settings.gravity = reactphysics3d::Vector3(0, rp3d::decimal(-9.81), 0);

    world = physicsCommon.createPhysicsWorld(settings);
    world->setIsDebugRenderingEnabled(true);

    reactphysics3d::DebugRenderer& debugRenderer = world->getDebugRenderer();
    debugRenderer.setIsDebugItemDisplayed(rp3d::DebugRenderer::DebugItem::CONTACT_POINT, true);

    androidBox = physicsCommon.createBoxShape(rp3d::Vector3(3.0, 1.8, 2.0));
    treeBox = physicsCommon.createBoxShape(rp3d::Vector3(2.0, 10.0, 2.0));
    floorBox = physicsCommon.createBoxShape(rp3d::Vector3(20.0, 0.01, 20.0));
    /*orientation = reactphysics3d::Quaternion::identity();
    transform = reactphysics3d::Transform::identity();*/

    android = createPhysicsObj(reactphysics3d::Vector3(0.0,1.8,0.0), androidBox, reactphysics3d::BodyType::DYNAMIC);
    android->enableGravity(true);

    tree1 = createPhysicsObj(reactphysics3d::Vector3(14.0,0.0,14.0), treeBox, reactphysics3d::BodyType::STATIC);
    tree2 = createPhysicsObj(reactphysics3d::Vector3(-14.0,0.0,14.0), treeBox, reactphysics3d::BodyType::STATIC);
    tree3 = createPhysicsObj(reactphysics3d::Vector3(14.0,0.0,-14.0), treeBox, reactphysics3d::BodyType::STATIC);
    tree4 = createPhysicsObj(reactphysics3d::Vector3(-14.0,0.0,-14.0), treeBox, reactphysics3d::BodyType::STATIC);

    floor = createPhysicsObj(reactphysics3d::Vector3(0.0,0.0,0.0), floorBox, reactphysics3d::BodyType::STATIC);
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
    world->destroyRigidBody(tree1);
    world->destroyRigidBody(tree2);
    world->destroyRigidBody(tree3);
    world->destroyRigidBody(tree4);
    world->destroyRigidBody(floor);
    world->destroyRigidBody(android);
    physicsCommon.destroyPhysicsWorld(world);
}

void PhysicsWorld::update() {
    world->update(1.0/60.0);
}