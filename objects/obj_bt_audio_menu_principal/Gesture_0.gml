/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// obj_bt_audio - Step Event

if (global.som && global.musica) {
    obj_som.toggle_som(snd_select_menu, "pause");
    obj_som.toggle_musica(snd_music_menu, "pause");
    global.som = false;
    global.musica = false;

} else {
    obj_som.toggle_som(snd_select_menu, "play");
    obj_som.toggle_musica(snd_music_menu, "play");
    global.som = true;
    global.musica = true;

}
