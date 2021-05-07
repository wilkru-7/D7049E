//
// Created by carol on 2021-05-07.
//

#include "keyboardEvent.h"

void KeyboardEvent::registerObserver(Observer *observer) {
    observers.push_back(observer);
}

void KeyboardEvent::removeObserver(Observer *observer) {
    auto iterator = std::find(observers.begin(), observers.end(), observer);

    if (iterator != observers.end()) { // observer found
        observers.erase(iterator); // remove the observer
    }
}

void KeyboardEvent::notifyObservers(float position[3]) {
    for (Observer *observer : observers) { // notify all observers
        observer->update(position);
    }
}
