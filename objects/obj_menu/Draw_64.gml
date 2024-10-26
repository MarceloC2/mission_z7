/// @description Desenho do Menu
// Desenhando todos os itens do menu
// Código da parte de desenho GUI
var _largura_tela = display_get_gui_width();
var _altura_tela = display_get_gui_height();
var _altura_item = 55;

var _num_visiveis = 0;
for (var _i = 0; _i < array_length(menu); _i++) {
    if (menu[_i].visivel) {
        _num_visiveis++;
    }
}

var _y_inicial = _altura_tela / 2 - (_num_visiveis * _altura_item) / 2;

for (var _i = 0; _i < array_length(menu); _i++) {
    if (menu[_i].visivel) {
        var _cor = (_i == atual) ? c_red : c_white;
        draw_set_font(fnt_menu);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(_cor);
        draw_text(_largura_tela / 2, _y_inicial + _altura_item * _i, menu[_i].texto);
        draw_set_color(c_white);
    }
}