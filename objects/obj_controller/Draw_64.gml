/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Define o tamanho base da GUI
/*
var _base_width = 540;
var _base_height = 960;

// Define a GUI inicial com o tamanho base
display_set_gui_size(_base_width, _base_height);

// Calcula a proporção da tela
var _aspect_ratio = display_get_width() / display_get_height();

// Verifica se a orientação é horizontal ou vertical
if (_aspect_ratio > 1) {
    // Horizontal
    display_set_gui_size(_base_height, _base_width);
}

// Ajusta a escala da GUI para manter a proporção
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

if (_aspect_ratio > 1) {
    // Ajusta para modo horizontal
    _gui_width = _base_height;
    _gui_height = _base_width;
} else {
    // Ajusta para modo vertical
    _gui_width = _base_width;
    _gui_height = _base_height;
}

// Aplica a escala para manter a proporção
var _scale = min(display_get_width() / _gui_width, display_get_height() / _gui_height);
display_set_gui_maximize(1);
display_set_gui_size(display_get_width() / _scale, display_get_height() / _scale);
*/