// Evento de colisão do obj_player com obj_inimigos
if (!global.escudo_ativo) {
    global.vida_player -= 10;
}

global.inimigos_destruidos++; // Incrementar o total de inimigos destruídos
instance_destroy(other); // Destruir o inimigo

// Verificar se o jogador ainda tem vida
if (global.vida_player <= 0) {
    show_gameover_screen(); // Mostrar tela de Game Over
}
