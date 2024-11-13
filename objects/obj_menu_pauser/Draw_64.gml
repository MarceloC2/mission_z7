// Evento Draw GUI do obj_menu_pause
draw_set_alpha(1);

// Desenhar a imagem de fundo somente se o menu de configuração estiver visível
if (menu == menu_configuracao) {
    draw_sprite(fundo_sprite, 0, 0, 0); // Ajuste a posição (x, y) conforme necessário

    // Desenhar barras de volume somente se as opções de volume estiverem visíveis
    draw_roundrect_colour(global.barra_som_x + 25, global.barra_som_y, 
        global.barra_som_x + global.volume_som_barra_largura +12, global.barra_som_y + 12, 
        c_grey, c_grey, false);
    draw_roundrect_colour(global.barra_musica_x + 25, global.barra_musica_y, 
        global.barra_musica_x + global.volume_musica_barra_largura +12, global.barra_musica_y + 12, 
        c_grey, c_grey, false);

    // Desenho da barra
    draw_roundrect_colour(global.barra_som_x + 25, global.barra_som_y, 
        (global.barra_som_x + global.volume_som_barra_largura * global.volume_som) + 12, 
        global.barra_som_y + 12, c_white, c_red, false);
    draw_roundrect_colour(global.barra_musica_x + 25, global.barra_musica_y, 
        (global.barra_musica_x + global.volume_musica_barra_largura * global.volume_musica) + 12, 
        global.barra_musica_y + 12, c_white, c_blue, false);
}

// Função para desenhar o menu
function desenhar_menu() {
    for (var _i = 0; _i < array_length(menu); _i++) {
        if (menu[_i].visivel) {
            var _index = (_i == atual) ? 1 : 0; // Muda para o índice 1 se estiver selecionado
            if (_i == 4) {
                // Ajusta o frame do spr_icon_audio conforme o estado do som e música.
                if (!global.musica) {
                    draw_sprite(menu[_i].sprite, 2, menu[_i].pos_x, menu[_i].pos_y);
                } else {
                    draw_sprite(menu[_i].sprite, 0, menu[_i].pos_x, menu[_i].pos_y);
                }
            } else if (_i == 7) {
				if (global.funcao_jogo_lento) {
				    draw_sprite(menu[_i].sprite, 0, menu[_i].pos_x, menu[_i].pos_y);
				} else {
				    draw_sprite(menu[_i].sprite, 1, menu[_i].pos_x, menu[_i].pos_y);
				}
			}else{
	            draw_sprite(menu[_i].sprite, _index, menu[_i].pos_x, menu[_i].pos_y);
				}
			}
			
        }
    
}

// Desenhar todos os itens do menu
desenhar_menu();
