

function verificar_interacao(_mouse_x, _mouse_y) {
    for (var _i = 0; _i < array_length(menu_resposta); _i++) {
        var _item = menu_resposta[_i];
        if (_mouse_x > _item.pos_x && _mouse_x < _item.pos_x + sprite_get_width(_item.sprite) &&
            _mouse_y > _item.pos_y && _mouse_y < _item.pos_y + sprite_get_height(_item.sprite)) {
            atual = _i;
            if (global.som) {
                obj_som.toggle_som(snd_select_menu, "play");
            }
            executar_acao_menu();
            break;
        }
    }
}

// Verificar posição do mouse para destaque e som
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);
for (var _i = 0; _i < array_length(menu_resposta); _i++) {
    var _item_x = menu_resposta[_i].pos_x;
    var _item_y = menu_resposta[_i].pos_y;
    if (_mouse_x > _item_x && _mouse_x < _item_x + sprite_get_width(menu_resposta[_i].sprite) &&
        _mouse_y > _item_y && _mouse_y < _item_y + sprite_get_height(menu_resposta[_i].sprite)) {
        if (atual != _i && global.som) {
            if (global.som) {
                obj_som.toggle_som(snd_select_menu, "play");
            }
        }
        atual = _i; // Destaque a opção do menu quando o mouse estiver sobre ela
        break;
    }
}

function executar_acao_menu() {
	resetar_jogo();
    switch (menu_resposta[atual].id) {
        case 1:
			//resetar_jogo();
            room_goto(rm_sobrevivencia);
            break;
        case 2:
            if (global.musica) {
                //obj_som.toggle_musica(snd_music_menu, "play");
                obj_som.toggle_musica(snd_music_sobrevivencia, "pause");	
            }
            //resetar_jogo();
			room_goto(rm_menu);
            break;
    }
}

// Verificar interação ao clicar
if (mouse_check_button_pressed(mb_left)) {
    verificar_interacao(_mouse_x, _mouse_y);
}
