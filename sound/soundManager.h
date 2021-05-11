#ifndef D7049E_SOUNDMANAGER_H
#define D7049E_SOUNDMANAGER_H

#include "soloud.h"
#include "soloud_wav.h"
#include "soloud_thread.h"
#include "../events/event.h"

class SoundManager: public Observer {
public:
    void SoundManager::init();
    void SoundManager::playSound();
    void SoundManager::update(int id);

    SoLoud::Soloud soloud; // Engine core
    SoLoud::Wav walkingSound;
    SoLoud::Wav collisionSound;
    SoLoud::Wav backgroundMusic;
};

#endif //D7049E_SOUNDMANAGER_H
