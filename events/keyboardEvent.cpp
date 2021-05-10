//
// Created by carol on 2021-05-07.
//

#include "keyboardEvent.h"

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
    } else {
        notifyObservers(id());
    }
}