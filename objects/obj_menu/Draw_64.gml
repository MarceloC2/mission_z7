// Desenhando todos os itens do menu
var _largura_tela = global.largura_tela;
var _altura_tela = global.altura_tela;
var _altura_item = global.altura_item;
var _y_inicial = global.y_inicial;

// Desenhar todos os itens do menu
for (var _i = 0; _i < array_length(menu); _i++) {
    var _index = (_i == atual) ? 1 : 0; // Muda para o índice 1 se estiver selecionado, senão usa o índice 0
    
    // Desenhar sprite com índice
    draw_sprite(menu[_i].sprite, _index, _largura_tela / 3.3, _y_inicial + _altura_item * _i + 110);
}


// Desenhar barras de volume somente se as opções de volume estiverem visíveis
if (menu == menu_configuracao) {
    /*
	O controle de posicionamento das barras de volume e som são configurado no Step.
	(variaveis globais barra de musica e barra de som)
	*/
    //sombra da barra
    //draw_roundrect_colour(global.barra_som_x +25, global.barra_som_y, global.barra_som_x + global.volume_som_barra_largura - 29, global.barra_som_y + 12, c_grey, c_grey, false);
    //draw_roundrect_colour(global.barra_musica_x +25, global.barra_musica_y, global.barra_musica_x + global.volume_musica_barra_largura -29, global.barra_musica_y + 12, c_gray, c_gray, false);
	
	//desenho da barra
    draw_roundrect_colour(global.barra_som_x + 25, global.barra_som_y, (global.barra_som_x + global.volume_som_barra_largura * global.volume_som)-29, global.barra_som_y + 12, c_black, c_blue, false);
	draw_roundrect_colour(global.barra_musica_x +25, global.barra_musica_y, (global.barra_musica_x + global.volume_musica_barra_largura * global.volume_musica) -29, global.barra_musica_y + 12, c_black, c_blue, false);
}

