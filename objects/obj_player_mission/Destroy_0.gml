if (global.jogador_troca_fase) {
    // A nave foi destruída devido à troca de formação
    global.jogador_troca_fase = false; // Reseta a variável para a próxima verificação
} else {
    // A nave foi destruída pelos inimigos
    room_goto(rm_mapa_missao); // Volta para a room inicial
}
