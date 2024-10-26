/*
// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
#macro AU_TYPE_SFX "SFX"
#macro AU_TYPE_MUSIC "MUSIC"


function AudioControler(_str_sfx, _str_music, _str_master) constructor {
    global.__audio_controle__ = self;
    list_audio = ds_list_create();
    
    global_sfx		= _str_sfx;
    global_music	= _str_music; // Corrigido aqui
    global_master	= _str_master;
    
    ///@method Update()
    static update = function() {
        vol_sfx		= variable_global_get(global_sfx) * variable_global_get(global_master);
        vol_music	= variable_global_get(global_music) * variable_global_get(global_master);
        
        var _size = ds_list_size(list_audio);
        for (var _i = 0; _i < _size; _i++) {
            list_audio[| _i].update();
        }
    }
}

//elementos
function AudioElement() constructor {
    controller = global.__audio_controle__;
    
    // se adicionando a si mesmo à lista de áudio
    ds_list_add(controller.list_audio, self);
    
    play		= false;
    sound_id	= noone;
    type		= noone;
    offset		= 1;
    
    ///@method Update
    static update = function() { }
}

function AudioPlaySingle(_sound_id, _au_type, _offset = 1) : AudioElement() constructor {
    soundid = _sound_id;
    type = _au_type;
    offset = _offset;
    
    static update = function() {
        if (play) {
            var _snd = audio_play_sound(soundid, 0, false);
            var _level;
            if (type == AU_TYPE_SFX) {
                _level = controller.vol_sfx * offset;
            } else {
                _level = controller.vol_music * offset;
            }
            audio_sound_gain(_snd, _level, 0);
            play = false;
        }
    }
    
    ///@method Stop
    static stop = function() {
        audio_stop_sound(soundid);
    }
}



function AudioPlayLoop(_sound_id, _au_type, _milisec, _offset = 1): AudioElement() constructor {
    soundid = _sound_id;
    type = _au_type;
    offset = _offset;
    id_playind = noone;
    vol = 0;
    vol_speed = 1 / (game_get_speed(gamespeed_fps) * (_milisec * 0.001));
    
    ///@method Update
    static update = function() {
        // Colocando para tocar
        if (play) {
            if (!audio_is_playing(id_playind)) {
                id_playind = audio_play_sound(soundid, 1, true);
            }
            
            // Aumentar o volume
            if (vol < 1) {
                vol += vol_speed;
            } else {
                vol = 1;
            }
        } else {
            // Parando de tocar
            if (vol > 0) {
                vol -= vol_speed;
            } else {
                vol = 0;
                // Parando de tocar
                audio_stop_sound(id_playind);
            }
        }
        
        // Definir o volume
        if (audio_is_playing(id_playind)) {
            // Descobrindo o volume
            var _level;
            if (type == AU_TYPE_SFX) {
                _level = controller.vol_sfx * vol * offset;
            } else {
                _level = controller.vol_music * vol * offset;
            }
            // Definindo de fato o volume
            audio_sound_gain(id_playind, _level, 0);
        }
    }
}
*/

/*
// Inicialize o controlador de áudio no evento de criação do objeto principal
audio_controller = new AudioControler("vol_sfx", "vol_music", "vol_master");

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

// Atualização do controlador de áudio na etapa
audio_controller.update();

*/
