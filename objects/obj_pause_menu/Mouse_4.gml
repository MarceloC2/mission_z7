/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    var new_volume = (mouse_x - x) / sprite_width;
    global.volume_som = clamp(new_volume, 0, 1);
    audio_sound_gain(snd_select_menu, global.volume_som, 0); // Ajuste do som do menu, por exemplo
}
