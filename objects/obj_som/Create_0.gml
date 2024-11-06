//Globais de audio
global.som = true;
global.musica = true;
global.master = true;
global.volume_som = 1; // Volume do som (0 a 1)
global.volume_musica = 1; // Volume da música (0 a 1)
global.volume_som_barra_largura = 200;
global.volume_musica_barra_largura = 200;


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


function toggle_som(_som, _acao) {
    if (_acao == "play") {
		if (global.som) {
			audio_play_sound(_som, 1, false);
		}
    } else if (_acao == "pause") {
        audio_pause_sound(_som);
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


// Função para alternar o estado de som e música
function toggle_master(_som ,_musica, _acao) {
    if (_acao == "play") {
        toggle_som(_som, _acao);
        toggle_musica(_musica, _acao);
        global.master = !global.master;
    } else if (_acao == "pauser") {
		audio_pause_all();
        global.master = !global.master;
    }
}
