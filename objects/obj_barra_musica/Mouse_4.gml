/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    var new_volume = (mouse_x - x) / sprite_width;
    global.volume_musica = clamp(new_volume, 0, 1);
    audio_sound_gain(snd_music_menu, global.volume_musica, 0); // Ajuste da música do menu, por exemplo
}
