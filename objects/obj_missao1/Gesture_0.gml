obj_som.toggle_musica(snd_music_menu, "pause");
if (global.som) {
    obj_som.toggle_som(snd_select_menu, "play");
}

global.missao_atual = 1; room_goto(rm_missao1); // Direcionar para a sala da missão 1