//
// Class for keyboard event. It inherits the Event class.
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
        int id() override {return 1;}

        void checkKeyboardInput(GLFWwindow* window);

        void key_callback(int key, int action);

    };
}

#endif //D7049E_KEYBOARDEVENT_H