//
// Created by Wilma on 10/05/2021.
//

#include "collisionEvent.h"

void CollisionEvent::onContact(const CollisionCallback::CallbackData& callbackData) {
    if(callbackData.getNbContactPairs() > 1 && callbackData.getContactPair(1).getEventType() == CollisionCallback::ContactPair::EventType::ContactStart) {
        notifyObservers(id());
    }
}