//
// Created by Wilma on 07/05/2021.
//

#ifndef D7049E_KEYBOARDEVENT_H
#define D7049E_KEYBOARDEVENT_H


#include "event.h"

namespace {
    class KeyboardEvent: public Event {
    public:
        int KeyboardEvent::id() {return 1;}

        void KeyboardEvent::registerObserver(Observer *observer) override;

        void KeyboardEvent::removeObserver(Observer *observer) override;

        void KeyboardEvent::notifyObservers(float position[3]) override;

        std::vector<Observer *> observers;

    };
}


#endif //D7049E_KEYBOARDEVENT_H