// Desenhar barras de volume somente se as opções de volume estiverem visíveis
if (menu == menu_configuracao) {
    // Sombra da barra (opcional, pode ser ajustada conforme necessário)
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



function desenhar_menu() {
    for (var _i = 0; _i < array_length(menu); _i++) {
        if (menu[_i].visivel) {
            var _index = (_i == atual) ? 1 : 0; // Muda para o índice 1 se estiver selecionado
			draw_sprite(menu[_i].sprite, _index, menu[_i].pos_x, menu[_i].pos_y);
		}
	}
}

if (botao_mute.visible) {
    
    with (botao_mute) {
        draw_self();
    }
}

// Desenhar todos os itens do menu
desenhar_menu();