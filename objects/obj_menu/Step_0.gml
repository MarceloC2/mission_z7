//obj_som.tocar_musica(snd_music_menu);
//obj_som.toggle_som(snd_select_menu,"Play");
if (global.musica) {
    obj_som.toggle_musica(snd_music_menu,"play");
}

// No evento Step
global.largura_tela = room_width; // display_get_gui_width();
global.altura_tela = room_height; // display_get_gui_height();
global.altura_item = 58; // Altura de cada item do menu
global.y_inicial =  global.altura_tela / 1.8 - (array_length(menu) * global.altura_item) / 2;

function verificar_interacao(_mouse_x, _mouse_y) {
    for (var _i = 0; _i < array_length(menu); _i++) {
        var _item = menu[_i];
        if (_mouse_x > _item.pos_x && _mouse_x < _item.pos_x + sprite_get_width(_item.sprite) &&
            _mouse_y > _item.pos_y && _mouse_y < _item.pos_y + sprite_get_height(_item.sprite)) {
            atual = _i;
			if (global.som){
            obj_som.toggle_som(snd_select_menu,"play");
			}
            //audio_play_sound(snd_select_menu, 1, false);
            executar_acao_menu();
            break;
        }
    }
}

// Verificar ajuste de volume pelo mouse ou toque na barra de som
if (mouse_check_button_pressed(mb_left)) {
    var _mouse_x = device_mouse_x_to_gui(0);
    var _mouse_y = device_mouse_y_to_gui(0);
    verificar_interacao(_mouse_x, _mouse_y);
}

if (device_mouse_check_button_pressed(0, mb_left)) {
    var _touch_x = device_mouse_x_to_gui(0);
    var _touch_y = device_mouse_y_to_gui(0);
    verificar_interacao(_touch_x, _touch_y);
}

// Verificar posição do mouse para destaque e som
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);
for (var _i = 0; _i < array_length(menu); _i++) {
    var _item_x = menu[_i].pos_x;
    var _item_y = menu[_i].pos_y;
    if (_mouse_x > _item_x && _mouse_x < _item_x + sprite_get_width(menu[_i].sprite) &&
        _mouse_y > _item_y && _mouse_y < _item_y + sprite_get_height(menu[_i].sprite)) {
        if (atual != _i && global.som) {
            
			if (global.som){
            obj_som.toggle_som(snd_select_menu,"play");
			}
			
        }
        atual = _i; // Destaque a opção do menu quando o mouse estiver sobre ela
        break;
    }
}


// Verificar ajuste de volume pelo mouse ou toque na barra de som (específico para configuração)
if (menu == menu_configuracao) {
    //var _mouse_x = device_mouse_x_to_gui(0);
    //var _mouse_y = device_mouse_y_to_gui(0);

    global.barra_som_x = (global.largura_tela - global.volume_som_barra_largura) / 2;
    global.barra_som_y = global.y_inicial + global.altura_item * array_length(menu) - 260;

    if (_mouse_x > global.barra_som_x && _mouse_x < global.barra_som_x + global.volume_som_barra_largura &&
        _mouse_y > global.barra_som_y && _mouse_y < global.barra_som_y + 100) {
        global.volume_som = (_mouse_x - global.barra_som_x) / global.volume_som_barra_largura;
        obj_som.ajustar_volume_som(snd_select_menu, global.volume_som);
    }

    global.barra_musica_x = (global.largura_tela - global.volume_musica_barra_largura) / 2;
    global.barra_musica_y = global.barra_som_y + 99;

    if (_mouse_x > global.barra_musica_x && _mouse_x < global.barra_musica_x + global.volume_musica_barra_largura &&
        _mouse_y > global.barra_musica_y && _mouse_y < global.barra_musica_y + 29) {
        global.volume_musica = (_mouse_x - global.barra_musica_x) / global.volume_musica_barra_largura;
        obj_som.ajustar_volume_musica(snd_music_menu, global.volume_musica);
    }
}



function mostrar_configuracoes() {
    menu = menu_configuracao;
    atual = 0;

    // Tornar os objetos invisíveis
    with (obj_logo) {
        visible = false;
    }

	 with (botao_mute){
        visible = false;
    }
    
}


function esconder_configuracoes() {
    menu = menu_principal;
    atual = 0;

    // Tornar os objetos visíveis
    with (obj_logo) {
        visible = true;
    }
    
	with (botao_mute){
        visible = true;
    }
}


function executar_acao_menu() {
    switch (menu[atual].id) {
        case 1:
			if (global.musica){
				obj_som.toggle_musica(snd_music_menu,"pause");
				obj_som.toggle_musica(snd_music_intro,"play");
			}
            room_goto(rm_intro_missao)
            break;
        case 2:
			if (global.musica){
				obj_som.toggle_musica(snd_music_menu,"pause");
				obj_som.toggle_musica(snd_music_sobrevivencia,"play");
			}
			
            room_goto(rm_sobrevivencia);
            break;
        case 3:
            show_message("Créditos: Equipe Cest");
            break;
        case 4:
            game_end();
            break;
		case 5:
            mostrar_configuracoes();
            break;
      
        case 8:
            //esconder_configuracoes()
			room_goto(rm_menu)
            break;
        
    }
}