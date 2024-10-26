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


// Funções para alternar som e música
function alternar_som() {
    global.som = !global.som;
    global.status_som = "Som " + (global.som ? "ativado" : "desativado");
}

function alternar_musica() {
    global.musica = !global.musica;
    show_message("Música " + (global.musica ? "ativada" : "desativada"));
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