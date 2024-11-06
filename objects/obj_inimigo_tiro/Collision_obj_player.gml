/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Reduzir vida do jogador
global.player_vida -= 1;
instance_destroy();  // Destruir o tiro do inimigo

// Verificar se o jogador ainda tem vida
if (global.player_vida <= 0) {
    // Implementar lógica de fim de jogo, ex: mostrar tela de Game Over
    show_gameover_screen();
}
