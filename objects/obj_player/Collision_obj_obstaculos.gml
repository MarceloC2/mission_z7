/// @description Inserir descrição aqui
if (!global.escudo_ativo) {
	global.vida_player -= 10;
}

global.obstaculos_destruidos++;
instance_destroy(other);  // Destruir o obstáculo


// Verificar se o jogador ainda tem vida
if (global.vida_player <= 0) {
    show_gameover_screen();  // Mostrar tela de Game Over
}
