/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Ajuste da tela para diferentes resoluções
display_set_gui_size(1080, 1920);
var _aspect_ratio = display_get_width() / display_get_height();
if (_aspect_ratio > 1) {
    // Horizontal
    display_set_gui_size(1920, 1080);
}
//audio_controller.update()