/// @description Inicialização do Controle de Som e Música
// trecho do script
// Variáveis globais para controle de som e música

/* uso do script audio_system
global.vol_sfx = 1; // Volume do som (0 a 1)
global.vol_music = 1; // Volume da música (0 a 1)
global.vol_master = 1;

audio_controller = new AudioControler("vol_sfx","vol_music","vol_master"); 

sfx_menu_select = new AudioPlaySingle(snd_select_menu, AU_TYPE_SFX);
music_menu = new AudioPlayLoop(snd_music_menu, AU_TYPE_MUSIC,2000);
*/


// Função para tocar música específica
function tocar_musica(_musica) {
    if (!audio_is_playing(_musica)) {
        audio_play_sound(_musica, 2, true);
    } else{
		//audio_play_sound(_musica, 2, true);
		//audio_pause_sound(_musica);
	}
}

// Função para tocar som específica
function tocar_som(_som) {
    if (global.som) {
        audio_play_sound(_som, 2, false);
    }else{
		audio_pause_sound(_som);
	}
}

/*
// Função para alternar som
function alternar_som() {
    global.som = global.som;
    if (global.som) {
        audio_play_sound(snd_select_menu, 1, false);
    } else {
		audio_stop_sound(snd_select_menu);		
    }
}
*/

// Função para alternar o estado do áudio
function toggle_audio() {
    if (global.som || global.musica) {
        audio_pause_all();
        global.som = false;
        global.musica = false;
    } else {
        //audio_resume_all();
        global.som = true;
        global.musica = true;
    }
}

/*
// Função para alternar música
function alternar_musica() {
    global.musica = !global.musica;
    if (global.musica) {
        if (!audio_is_playing(snd_music_menu)) {
            audio_play_sound(snd_music_menu, 2, true);
        }
    } else {
        audio_stop_sound(snd_music_menu);
    }
}
*/
// Função para ajustar volume do som
function ajustar_volume_som(_volume) {
    global.volume_som = clamp(_volume, 0, 1);
    //audio_master_gain(global.volume_som);
	audio_sound_gain(snd_select_menu, global.volume_som, 0);
}

// Função para ajustar volume da música
function ajustar_volume_musica(_volume) {
    global.volume_musica = clamp(_volume, 0, 1);
    audio_sound_gain(snd_music_menu, global.volume_musica, 0);
}

/*
// Função para verificar se qualquer áudio está tocando
function verificar_status_audio() {
    // Supondo que você tenha uma array global contendo todos os sons
    var _sounds_array = [snd_music_menu, snd_select_menu];
    for (var _i = 0; _i < array_length(_sounds_array); _i++) {
        if (audio_is_playing(_sounds_array[_i])) {
            return true;
        }
    }
    return false;
}
*/




/*
/// @description Inicialização do Controle de Som e Música

// Variáveis globais para controle de som e música
global.vol_sfx = 1; // Volume do som (0 a 1)
global.vol_music = 1; // Volume da música (0 a 1)
global.vol_master = 1;

// Inicializando o controlador de áudio
audio_controller = new AudioControler("vol_sfx", "vol_music", "vol_master");

// Funções para alternar som e música
function alternar_som() {
    global.som = !global.som;
    global.status_som = "Som " + (global.som ? "ativado" : "desativado");
}

function alternar_musica() {
    global.musica = !global.musica;
    global.status_music =("Música " + (global.musica ? "ativada" : "desativada"));
}

// Funções para ajustar volume
function ajustar_volume_som(_valor) {
    global.volume_som = clamp(_valor, 0, 1);
    audio_master_gain(global.volume_som);
}

function ajustar_volume_musica(_valor) {
    global.volume_musica = clamp(_valor, 0, 1);
    //audio_music_gain(global.volume_musica);
}

// Atualização do controlador de áudio na etapa
audio_controller.update();
*/