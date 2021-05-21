//
// Created by Wilma on 10/05/2021.
//

#include "collisionEvent.h"

CollisionEvent::CollisionEvent(std::vector<Object*> *list) {
    objects = list;
}

void CollisionEvent::onContact(const CollisionCallback::CallbackData& callbackData) {
    // Android and all other objects except floor
    /*if(callbackData.getNbContactPairs() > 2 && callbackData.getContactPair(2).getEventType() == CollisionCallback::ContactPair::EventType::ContactStart) {
        notifyObservers(id());
    }
    // Andorid and floor
    if(callbackData.getNbContactPairs() > 1 && callbackData.getContactPair(1).getEventType() == CollisionCallback::ContactPair::EventType::ContactExit) {
        notifyObservers(22);
    }*/
    // For each contact pair
    for (int p = 0; p < callbackData.getNbContactPairs(); p++) {

        // Get the contact pair
        CollisionCallback::ContactPair contactPair = callbackData.getContactPair(p);
        reactphysics3d::CollisionBody* body1 = contactPair.getBody1();
        reactphysics3d::CollisionBody* body2 = contactPair.getBody2();
        bool android = false;

        for(auto & obj : *objects) {
            if(obj->type == "Android" && (obj->physicsBody == body1 || obj->physicsBody == body2)) {
                android = true;
            }
        }
        for(auto & obj : *objects) {
            if(android && obj->type == "Floor" && (obj->physicsBody == body1 || obj->physicsBody == body2) && contactPair.getEventType() == CollisionCallback::ContactPair::EventType::ContactExit) {
                notifyObservers(22);
            }
            if (android && obj->type != "Floor" && obj->type != "Android" && (obj->physicsBody == body1 || obj->physicsBody == body2) && contactPair.getEventType() == CollisionCallback::ContactPair::EventType::ContactStart) {
                notifyObservers(id());
            }
        }

    }
}

