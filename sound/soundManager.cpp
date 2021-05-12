#include "soundManager.h"

int h, h2;

void SoundManager::init() {
    // Initialize SoLoud (automatic back-end selection)
    soloud.init();
    soloud.setGlobalVolume(0.1f);
    collisionSound.load("../../../../assets/sounds/uh2.wav");
    walkingSound.load("../../../../assets/sounds/footstep.wav");
    backgroundMusic.load("../../../../assets/sounds/pianoloop.wav");
    soloud.play(backgroundMusic);
    backgroundMusic.setLooping(true);
    //h = soloud.play(sample, 1, 0, 1);
    //soloud.play(sample);
    //sample.load("../../../../mozart.wav"); // Load a wave file
}

void SoundManager::update(int id){
    switch(id) {
        case 0: soloud.stop(h);
                break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8: if (soloud.countAudioSource(walkingSound) == 0) {
                    h = soloud.playClocked(1, walkingSound);
                }
                break;
        case 9:
                h2 = soloud.play(collisionSound);
                break;
        default:
            //soloud.play(sample);        // Play it
            break;
    }

}