/// @description Desenho do Menu
// Desenhando todos os itens do menu
/*
var _largura_tela = display_get_gui_width();
var _altura_tela = display_get_gui_height();
var _altura_item = 35;
var _y_inicial = _altura_tela / 1.30 - (array_length(menu) * _altura_item) / 2;

for (var i = 0; i < array_length(menu); i++) {
    var _cor = (i == atual) ? c_red : c_white;
    draw_set_font(fnt_menu);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(_cor);
    draw_text(_largura_tela / 2, _y_inicial + _altura_item * i, menu[i].texto);
    draw_set_color(c_white);
}
*/

/// @description Desenho do Menu
// Desenhando todos os itens do menu
var _largura_tela = display_get_gui_width();
var _altura_tela = display_get_gui_height();
var _altura_item = 35;
var _y_inicial = _altura_tela / 1.30 - (array_length(menu) * _altura_item) / 2;

for (var _i = 0; _i < array_length(menu); _i++) {
    var _cor = (_i == atual) ? c_white : c_lime;
    draw_set_font(fnt_menu);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_roundrect_colour(_largura_tela / 2 - 100, _y_inicial + _altura_item * _i - 14, _largura_tela / 2 + 100, _y_inicial + _altura_item * _i + 14, c_black, c_lime, false);
	
	
    // Desenhar contorno
    draw_set_color(c_lime); // Cor do contorno
    for (var _ox = -1; _ox <= 4; _ox++) {
        for (var _oy = -1; _oy <= 1; _oy++) {
            if (_ox != 2 || _oy != 0) {
                //draw_text(_largura_tela / 2 + _ox, _y_inicial + _altura_item * _i + _oy, menu[_i].texto);
				//draw_rectangle(_largura_tela / 2 - 100, _y_inicial + _altura_item * _i - 14, _largura_tela / 2 + 100, _y_inicial + _altura_item * _i + 14, true);
				draw_roundrect_colour(_largura_tela / 2 - 100, _y_inicial + _altura_item * _i - 14, _largura_tela / 2 + 100, _y_inicial + _altura_item * _i + 14, c_purple, c_purple, false);	
            }
        }
    }

    // Desenhar texto
    draw_set_color(_cor);
    draw_text(_largura_tela / 2, _y_inicial + _altura_item * _i, menu[_i].texto);
}



// Desenhar barra de volume do som
var _largura_barra_som = 200;
var _altura_barra = 12;
var _x_barra_som = (_largura_tela - _largura_barra_som) / 2;
var _y_barra_som = _y_inicial + _altura_item * array_length(menu) + 40;
draw_set_color(c_black);
draw_roundrect(_x_barra_som, _y_barra_som, _x_barra_som + _largura_barra_som, _y_barra_som + _altura_barra, false);
draw_set_color(c_green);
draw_roundrect(_x_barra_som, _y_barra_som, _x_barra_som + _largura_barra_som * global.volume_som, _y_barra_som + _altura_barra, false);
/*
// Desenhar barra de volume da música
var _x_barra_musica = (_largura_tela - _largura_barra_som) / 2;
var _y_barra_musica = _y_barra_som + _altura_barra + 20;
draw_set_color(c_black);
draw_roundrect(_x_barra_musica, _y_barra_musica, _x_barra_musica + _largura_barra_som, _y_barra_musica + _altura_barra, false);
draw_set_color(c_blue);
draw_roundrect(_x_barra_musica, _y_barra_musica, _x_barra_musica + _largura_barra_som * global.volume_musica, _y_barra_musica + _altura_barra, false);

*/