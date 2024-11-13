/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//global.player_vida = 10;
//global.pontos = 0;
obj_som.toggle_musica(snd_game_over,"pause");
obj_som.toggle_musica(snd_music_menu,"play");
global.vida_player = 1;  // Vida começa com 100%
global.inimigos_destruidos = 0;
global.pontos = 0;  // Inicializar pontos
room_goto(rm_menu);