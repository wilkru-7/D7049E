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
        int id() override {return 0;}

        void checkKeyboardInput(GLFWwindow* window);
    };
}

#endif //D7049E_KEYBOARDEVENT_H