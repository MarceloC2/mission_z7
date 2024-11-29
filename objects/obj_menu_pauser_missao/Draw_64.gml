// Evento Draw GUI do obj_menu_pause
draw_set_alpha(1);

// Desenhar a imagem de fundo somente se o menu de configuração estiver visível
if (menu == menu_configuracao) {
    draw_sprite(fundo_sprite, 0, 0, 0); // fundo do menu
	
	draw_sprite(spr_pause_menu,0,35,160);
	draw_sprite(spr_som,0,100,340);
	draw_sprite(spr_musica,0,100,440);

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
        global.barra_som_y + 12, c_white, c_blue, false);
    draw_roundrect_colour(global.barra_musica_x + 25, global.barra_musica_y, 
        (global.barra_musica_x + global.volume_musica_barra_largura * global.volume_musica) + 12, 
        global.barra_musica_y + 12, c_white, c_blue, false);
}

// Função para desenhar o menu
function desenhar_menu() {
    for (var _i = 0; _i < array_length(menu); _i++) {
        if (menu[_i].visivel) {
            var _index = (_i == atual) ? 1 : 0; // Muda para o índice 1 se estiver selecionado
            draw_sprite(menu[_i].sprite, _index, menu[_i].pos_x, menu[_i].pos_y);
            }
        }
}

// Desenhar todos os itens do menu
desenhar_menu();


if (botao_mute.visible) {
    
    with (botao_mute) {
        draw_self();
    }
}