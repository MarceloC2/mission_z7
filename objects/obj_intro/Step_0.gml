// Evento Step do obj_intro
if (frame_atual < 3) { // Considerando que spr_intro tem 6 frames, então vai de 0 a 5
	
    sprite_index = spr_intro;
    image_index = frame_atual;
} else {
	obj_som.toggle_musica(snd_music_intro, "pause");
	if (global.musica) {
        obj_som.toggle_musica(snd_music_menu, "play");
    }
    room_goto(rm_mapa_missao); // Vai para a sala do menu se todos os frames tiverem sido mostrados
}
if (global.pular){
	room_goto(rm_mapa_missao);
}