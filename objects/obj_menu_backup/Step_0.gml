if (global.musica) {
    obj_som.tocar_musica(snd_music_menu);
	
	
}
// No evento Step:
global.largura_tela = display_get_gui_width();
global.altura_tela = display_get_gui_height();
global.altura_item = 60;
global.y_inicial = global.altura_tela / 1.5 - (array_length(menu) * global.altura_item) / 1.6;

/*
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
*/

// Verificar ajuste de volume pelo mouse ou toque na barra de som
if (mouse_check_button_pressed(mb_left)) {
    var _mouse_x = device_mouse_x_to_gui(0);
    var _mouse_y = device_mouse_y_to_gui(0);

    global.barra_som_x = (global.largura_tela - global.volume_som_barra_largura) / 2;
    global.barra_som_y = global.y_inicial + global.altura_item * array_length(menu)-40;

    if (_mouse_x > global.barra_som_x && _mouse_x < global.barra_som_x + global.volume_som_barra_largura &&
        _mouse_y > global.barra_som_y && _mouse_y < global.barra_som_y + 12) {
        
        global.volume_som = (_mouse_x - global.barra_som_x) / global.volume_som_barra_largura;
        obj_som.ajustar_volume_som(global.volume_som);
    }

    global.barra_musica_x = (global.largura_tela - global.volume_musica_barra_largura) / 2;
    global.barra_musica_y = global.barra_som_y + 61;

    if (_mouse_x > global.barra_musica_x && _mouse_x < global.barra_musica_x + global.volume_musica_barra_largura &&
        _mouse_y > global.barra_musica_y && _mouse_y < global.barra_musica_y + 29) {
        
        global.volume_musica = (_mouse_x - global.barra_musica_x) / global.volume_musica_barra_largura;
        obj_som.ajustar_volume_musica(global.volume_musica);
    }
}


// Verificar posição do mouse para destaque e som
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

for (var _i = 0; _i < array_length(menu); _i++) {
    
	var _item_x = global.largura_tela / 3.3;
    var _item_y = global.y_inicial + global.altura_item * _i + 110;

    if (_mouse_x > _item_x && _mouse_x < _item_x + sprite_get_width(menu[_i].sprite) &&
        _mouse_y > _item_y && _mouse_y < _item_y + sprite_get_height(menu[_i].sprite)) {

        if (atual != _i && global.som) {
            audio_play_sound(snd_select_menu, 1, false);
        }

        atual = _i; // Destaque a opção do menu quando o mouse estiver sobre ela
        break;
    }
}


// Verificar toque na tela
if (device_mouse_check_button_pressed(0, mb_left)) {
    var _touch_x = device_mouse_x_to_gui(0);
    var _touch_y = device_mouse_y_to_gui(0);

    for (var _i = 0; _i < array_length(menu); _i++) {
        var _item_x = global.largura_tela / 3.3;
        var _item_y = global.y_inicial + global.altura_item * _i + 110;

        if (_touch_x > _item_x && _touch_x < _item_x + sprite_get_width(menu[_i].sprite) &&
            _touch_y > _item_y && _touch_y < _item_y + sprite_get_height(menu[_i].sprite)) {

            atual = _i;

            if (global.som) {
                audio_play_sound(snd_select_menu, 1, false);
            }

            executar_acao_menu();
            break;
        }
    }
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
            room_goto(rm_missao1)
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
            
            break;
        case 6:
            
            break;
        case 7:
            esconder_configuracoes();
            break;
		
        
    }
}