/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.player_vida -= 1;
instance_destroy(other);  // Destruir o tiro do inimigo

// Verificar se o jogador ainda tem vida
if (global.player_vida <= 0) {
    show_gameover_screen();  // Mostrar tela de Game Over
}
