// Função para ajustar volume do som
function ajustar_volume_som(_som, _volume) {
    global.volume_som = clamp(_volume, 0, 1);
    audio_sound_gain(_som, global.volume_som, 0);
}

// Função para ajustar volume da música
function ajustar_volume_musica(_musica,_volume) {
    global.volume_musica = clamp(_volume, 0, 1);
    audio_sound_gain(_musica, global.volume_musica, 0);
}

// Função para alternar o estado do som
function toggle_som(_som, _acao) {
    if (_acao == "play") {
        if (!audio_is_playing(_som)) {
            audio_play_sound(_som, 2, false);
        } else {
            audio_resume_sound(_som);
        }
    } else if (_acao == "pause") {
        if (audio_is_playing(_som)) {
            audio_pause_sound(_som);
        }
    }
}

// Função para alternar o estado da música
function toggle_musica(_musica, _acao) {
    if (_acao == "play") {
        if (!audio_is_playing(_musica)) {
            audio_play_sound(_musica, 2, true);
        } else {
            audio_resume_sound(_musica);
        }
    } else if (_acao == "pause") {
        if (audio_is_playing(_musica)) {
            audio_pause_sound(_musica);
        }
    }
}
