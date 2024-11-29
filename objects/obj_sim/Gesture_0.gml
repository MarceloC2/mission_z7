if (global.som){
	obj_som.toggle_musica(snd_musica_game_over,"pause");
	obj_som.toggle_musica(snd_music_menu,"play");
}
resetar_jogo();
room_goto(rm_sobrevivencia);