#include "soundManager.h"

int h;

void SoundManager::init() {
    // Initialize SoLoud (automatic back-end selection)
    soloud.init();
    soloud.setGlobalVolume(0.1f);
    //sample.load("../../../../assets/sounds/uh.wav");
    sample.load("../../../../assets/sounds/footstep.wav");
    //h = soloud.play(sample, 1, 0, 1);
    //sample.load("../../../../mozart.wav"); // Load a wave file
}

void SoundManager::update(int id){

    switch(id) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
            //soloud.play(sample);        // Play it
            break;
        default:
            break;
    }

}