//
// Implemented functions for the collision event class.
//

#include "collisionEvent.h"

/**
 * Constructor that takes a pointer to the object vector from app.cpp as parameter.
 * @param list
 */
CollisionEvent::CollisionEvent(std::vector<Object*> *list) {
    objects = list;
}

/**
 * Function that gets called automatically in the case of a collision between two
 * collision bodies in the physics world.
 * @param callbackData
 */
void CollisionEvent::onContact(const CollisionCallback::CallbackData& callbackData) {

    // For each contact pair
    for (int p = 0; p < callbackData.getNbContactPairs(); p++) {

        // Get the contact pair
        CollisionCallback::ContactPair contactPair = callbackData.getContactPair(p);
        reactphysics3d::CollisionBody* body1 = contactPair.getBody1();
        reactphysics3d::CollisionBody* body2 = contactPair.getBody2();
        bool android = false;

        // check if an object of type android is in the contact pair
        for(auto & obj : *objects) {
            if(obj->type == "Android" && (obj->physicsBody == body1 || obj->physicsBody == body2)) {
                android = true;
            }
        }
        for(auto & obj : *objects) {
            // check if the android has collided with an object of other type than floor or android
            if (android && obj->type != "Floor" && obj->type != "Android" && (obj->physicsBody == body1 || obj->physicsBody == body2) && contactPair.getEventType() == CollisionCallback::ContactPair::EventType::ContactStart) {
                notifyObservers(id());
            }
        }

    }
}

