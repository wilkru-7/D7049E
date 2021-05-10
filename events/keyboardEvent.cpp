//
// Created by carol on 2021-05-07.
//

#include "keyboardEvent.h"

int KeyboardEvent::id() {
    return 0;
}

void KeyboardEvent::registerObserver(Observer *observer) {
    observers.push_back(observer);
}

void KeyboardEvent::removeObserver(Observer *observer) {
    auto iterator = std::find(observers.begin(), observers.end(), observer);

    if (iterator != observers.end()) { // observer found
        observers.erase(iterator); // remove the observer
    }
}

void KeyboardEvent::checkKeyboardInput(GLFWwindow* window) {
    //move left forward
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(1);
    //move right forward
    } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(2);
        //move left backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(3);
        //move right backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(4);
        //move left
    } else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(5);
        //move backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
        notifyObservers(6);
        //move right
    } else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(7);
        // move forward
    } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
        notifyObservers(8);
    }
}

void KeyboardEvent::notifyObservers(int id) {
    for (Observer *observer : observers) { // notify all observers
        observer->update(id);
    }
}