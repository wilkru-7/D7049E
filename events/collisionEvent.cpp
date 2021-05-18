//
// Created by Wilma on 10/05/2021.
//

#include "collisionEvent.h"

void CollisionEvent::onContact(const CollisionCallback::CallbackData& callbackData) {
    // Android and all other objects except floor
    if(callbackData.getNbContactPairs() > 2 && callbackData.getContactPair(2).getEventType() == CollisionCallback::ContactPair::EventType::ContactStart) {
        notifyObservers(id());
    }
    // Andorid and floor
    if(callbackData.getNbContactPairs() > 1 && callbackData.getContactPair(1).getEventType() == CollisionCallback::ContactPair::EventType::ContactExit) {
        notifyObservers(22);
    }
}

