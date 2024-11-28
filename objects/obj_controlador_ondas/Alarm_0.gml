// Parar todos os sons
audio_stop_all();

// Despausar o jogo para evitar erros ao retornar
global.pausado = false;

// Tocar música da vitoria
if (global.musica){
	obj_som.toggle_musica(snd_vitoria, "play");
}
// Ativar o escudo da nave do jogador
with (obj_player) {
    instance_create_layer(x, y, "Instances", obj_escudo);
}
	
// Mudar para a sala de vitória
room_goto(rm_vitoria);
