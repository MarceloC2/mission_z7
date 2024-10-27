/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Define o tamanho base da GUI
var base_width = 1280;
var base_height = 720;

// Define a GUI inicial com o tamanho base
display_set_gui_size(base_width, base_height);

// Calcula a proporção da tela
var _aspect_ratio = display_get_width() / display_get_height();

// Verifica se a orientação é horizontal ou vertical
if (_aspect_ratio > 1) {
    // Horizontal
    display_set_gui_size(base_height, base_width);
}

// Ajusta a escala da GUI para manter a proporção
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

if (_aspect_ratio > 1) {
    // Ajusta para modo horizontal
    gui_width = base_height;
    gui_height = base_width;
} else {
    // Ajusta para modo vertical
    gui_width = base_width;
    gui_height = base_height;
}

// Aplica a escala para manter a proporção
var scale = min(display_get_width() / gui_width, display_get_height() / gui_height);
display_set_gui_maximize(1);
display_set_gui_size(display_get_width() / scale, display_get_height() / scale);
