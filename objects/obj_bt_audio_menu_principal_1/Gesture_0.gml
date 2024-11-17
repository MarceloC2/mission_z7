

if (global.som && global.musica) {
    obj_som.toggle_som(snd_tiro_laser, "pause");
    obj_som.toggle_musica(snd_music_sobrevivencia, "pause");
    global.som = false;
    global.musica = false;

} else {
    obj_som.toggle_som(snd_tiro_laser, "play");
    obj_som.toggle_musica(snd_music_sobrevivencia, "play");
    global.som = true;
    global.musica = true;

}
