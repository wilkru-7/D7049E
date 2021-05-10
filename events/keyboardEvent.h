//
// Created by Wilma on 07/05/2021.
//

#ifndef D7049E_KEYBOARDEVENT_H
#define D7049E_KEYBOARDEVENT_H


#include "event.h"

#include "GLFW/glfw3.h"
#define GLFW_EXPOSE_NATIVE_WIN32
#include "GLFW/glfw3native.h"

namespace {
    class KeyboardEvent: public Event {
    public:
        int KeyboardEvent::id();

        void KeyboardEvent::registerObserver(Observer *observer) override;

        void KeyboardEvent::removeObserver(Observer *observer) override;

        void KeyboardEvent::notifyObservers(int id) override;

        void KeyboardEvent::checkKeyboardInput(GLFWwindow* window);

        std::vector<Observer *> observers;

    };
}


#endif //D7049E_KEYBOARDEVENT_H