//
// Implemented functions for the keyboard event class.
//

#include "keyboardEvent.h"

/**
 * Function that checks the keyboard input for the buttons W, A, S, D and spacebar.
 * This function is called from the update() method in the main file app.cpp.
 * It takes the GLFW window as parameter.
 * @param window
 */
void KeyboardEvent::checkKeyboardInput(GLFWwindow* window) {
        //move left forward
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(11);
        //move right forward
    } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(12);
        //move left backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(13);
        //move right backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(14);
        //move left
    } else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(15);
        //move backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
        notifyObservers(16);
        //move right
    } else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(17);
        // move forward
    } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
        notifyObservers(18);
        // jump
    } else if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS) {
        notifyObservers(19);
        // no movement has occurred
    }else {
        notifyObservers(id());
    }
}

/**
 * This function is called when keyboard input for the E, 1, 2, 3, 4, and R buttons has occurred.
 * It is set as the key callback function from the app.cpp file. This function only gets called once
 * each key press.
 * @param key
 * @param action
 */
void KeyboardEvent::key_callback(int key, int action)
{
        // pickup object
    if (key == GLFW_KEY_E && action == GLFW_PRESS){
        notifyObservers(110);
        // place object
    } else if (key == GLFW_KEY_1 && action == GLFW_PRESS){
        notifyObservers(111);
        // place object
    } else if (key == GLFW_KEY_2 && action == GLFW_PRESS){
        notifyObservers(112);
        // place object
    } else if (key == GLFW_KEY_3 && action == GLFW_PRESS){
        notifyObservers(113);
        // place object
    } else if (key == GLFW_KEY_4 && action == GLFW_PRESS){
        notifyObservers(114);
        // reset position of object
    }else if (key == GLFW_KEY_R && action == GLFW_PRESS){
        notifyObservers(115);
    }
}
