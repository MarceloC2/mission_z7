/// @description Navegação do Menu
//funcionando sem o script controle de audio

if (global.musica) {
    obj_som.tocar_musica(snd_music_menu);
}


if (keyboard_check_pressed(vk_down)) {
    navegar_menu(1);
}

if (keyboard_check_pressed(vk_up)) {
    navegar_menu(-1);
}

if (keyboard_check_pressed(vk_enter)) {
    if (global.som) {
        audio_play_sound(snd_select_menu, 1, false);
    }
    executar_acao_menu();
}

function navegar_menu(_direcao) {
    var _start = atual;
    var _i = 0;
    while (_i < array_length(menu)) {
        atual = (_start + _direcao + _i + array_length(menu)) % array_length(menu);
        if (menu[atual].visivel) {
            break;
        }
        _i++;
    }
    if (global.som) {
        audio_play_sound(snd_select_menu, 1, false);
    }
}


function mostrar_configuracoes() {
   menu = menu_configuracao;
   atual = 0;
}

function esconder_configuracoes() {
    menu = menu_principal;
    atual = 0;
}



function executar_acao_menu() {
    switch (menu[atual].id) {
        case 1:
            show_message("Jogar Missão");
            break;
        case 2:
            room_goto(rm_sobrevivencia);
            break;
        case 3:
            show_message("Créditos: Equipe Cest");
            break;
        case 4:
            game_end();
            break;
        case 5:
            obj_som.alternar_som();
            break;
        case 6:
            obj_som.alternar_musica();
            break;
        case 7:
            obj_som.ajustar_volume_som(global.volume_som + 0.1);
            break;
        case 8:
            obj_som.ajustar_volume_som(global.volume_som - 0.1);
            break;
        case 9:
            obj_som.ajustar_volume_musica(global.volume_musica + 0.1);
            break;
        case 10:
            obj_som.ajustar_volume_musica(global.volume_musica - 0.1);
            break;
        case 11:
            //esconder_configuracoes();
            break;
    }
}


/// @description Navegação do Menu

// Inicialize a música do menu usando o sistema de áudio
//var music_menu = new AudioPlaySingle(snd_music_menu, AU_TYPE_MUSIC);
//music_menu.play = true;
//obj_som.music_menu.play = true;



/*  Utilizando Script audio-system - mas não está funcionando
if (keyboard_check_pressed(vk_down)) {
    navegar_menu(1);
}

if (keyboard_check_pressed(vk_up)) {
    navegar_menu(-1);
}

if (keyboard_check_pressed(vk_enter)) {
    if (global.vol_sfx) {
        //var select_menu = new AudioPlaySingle(snd_select_menu, AU_TYPE_SFX);
        //select_menu.play = true;
		//obj_som.sfx_menu_select = true;
		obj_som.sfx_menu_select.play = true;
		
    }
    executar_acao_menu();
}

function navegar_menu(_direcao) {
    var _start = atual;
    var _i = 0;
    while (_i < array_length(menu)) {
        atual = (_start + _direcao + _i + array_length(menu)) % array_length(menu);
        if (menu[atual].visivel) {
            break;
        }
        _i++;
    }
    if (global.vol_sfx) {
        //var select_menu = new AudioPlaySingle(snd_select_menu, AU_TYPE_SFX);
        //select_menu.play = true;
		//obj_som.sfx_menu_select = true;
		obj_som.sfx_menu_select.play = true;
    }
}

function mostrar_configuracoes() {
   menu = menu_configuracao;
   atual = 0;
}

function esconder_configuracoes() {
    menu = menu_principal;
    atual = 0;
}

function executar_acao_menu() {
    switch (menu[atual].id) {
        case 1:
            show_message("Jogar Missão");
            break;
        case 2:
            room_goto(rm_sobrevivencia);
            break;
        case 3:
            mostrar_configuracoes();
            break;
        case 4:
            show_message("Créditos: Equipe Cest");
            break;
        case 5:
            game_end();
            break;
        case 6:
            obj_som.sfx_menu_select = true;
            break;
        case 7:
            obj_som.music_menu.play = true;
            break;
        case 8:
			
            ajustar_volume_som(global.vol_sfx + 0.1);
            break;
        case 9:
            ajustar_volume_som(global.vol_sfx - 0.1);
            break;
        case 10:
            ajustar_volume_musica(global.vol_music + 0.1);
            break;
        case 11:
            ajustar_volume_musica(global.vol_music - 0.1);
            break;
        case 12:
            esconder_configuracoes();
            break;
    }
}
*/