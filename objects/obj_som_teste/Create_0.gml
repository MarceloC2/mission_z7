//Globais de audio
//global.som = true;
//global.musica = true;

global.volume_som_barra_largura = 200;
global.volume_musica_barra_largura = 200;

if (!variable_global_exists("som"))
{
    global.som = true;
}

if (!variable_global_exists("musica"))
{
    global.musica = true;
}

if (!variable_global_exists("volume_som")) // Volume do som (0 a 1)
{
    global.volume_som = 1;
}

if (!variable_global_exists("volume_musica")) // Volume da música (0 a 1)
{
    global.volume_musica = 1;
}

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
			ajustar_volume_som(_som, global.volume_som);
		}
    } else if (_acao == "pause") {
        audio_pause_sound(_som);
    }
}

function tocar_som(_som) {
	if (global.som) {
		audio_play_sound(_som, 1, false);
		ajustar_volume_som(_som, global.volume_som);
		}
}

// Função para alternar o estado da música
function toggle_musica(_musica, _acao) {
    if (_acao == "play") {
        if (!audio_is_playing(_musica)) {
            audio_play_sound(_musica, 2, true);
			ajustar_volume_musica(_musica, global.volume_musica);
			
			
        } else {
            audio_resume_sound(_musica);
        }
    } else if (_acao == "pause") {
        if (audio_is_playing(_musica)) {
            audio_pause_sound(_musica);
        }
    }
}

//teste abaixo
// Função para silenciar o som e a música
function silenciar_som() {
    toggle_som(snd_select_menu, "pause");
    toggle_musica(snd_music_menu, "pause");
    global.som = false;
    global.musica = false;
}

// Função para ativar o som e a música
function ativar_som() {
    toggle_som(snd_select_menu, "play");
    toggle_musica(snd_music_menu, "play");
    global.som = true;
    global.musica = true;
}


