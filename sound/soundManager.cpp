#include "soundManager.h"

int h, h2;

void SoundManager::init() {
    // Initialize SoLoud (automatic back-end selection)
    soloud.init();
    soloud.setGlobalVolume(0.1f);
    collisionSound.load("../../../../assets/sounds/uh2.wav");
    walkingSound.load("../../../../assets/sounds/footstep.wav");
    backgroundMusic.load("../../../../assets/sounds/pianoloop.wav");
    backgroundMusic.setLooping(true);
    soloud.play(backgroundMusic);
    //h = soloud.play(sample, 1, 0, 1);
    //soloud.play(sample);
    //sample.load("../../../../mozart.wav"); // Load a wave file
}

void SoundManager::update(int id){
    switch(id) {
        case 1: soloud.stop(h);
                break;
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18: if (soloud.countAudioSource(walkingSound) == 0) {
                    h = soloud.playClocked(1, walkingSound);
                }
                break;
        case 2:
                h2 = soloud.play(collisionSound);
                break;
        default:
            //soloud.play(sample);        // Play it
            break;
    }

}