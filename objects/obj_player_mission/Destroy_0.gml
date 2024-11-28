// Evento Destroy no obj_player_mission
/*if (global.som) {
    obj_som.toggle_som(snd_explosao_jogador, "play");
}*/
// Evento Destruction no obj_player_mission
if (global.jogador_troca_fase) {
    // A nave foi destruída devido à troca de formação
    global.jogador_troca_fase = false; // Reseta a variável para a próxima verificação
} else {
    // A nave foi destruída pelos inimigos
    room_goto(rm_mapa_missao); // Volta para a room inicial
}
