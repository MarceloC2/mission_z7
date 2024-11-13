/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//Perder vida se não estiver com escudo
if (!global.escudo_ativo) {
	global.vida_player -= 0.1;
	}
instance_destroy(other);  // Destruir o obstáculo

// Verificar se o jogador ainda tem vida
if (global.vida_player <= 0) {
    show_gameover_screen();  // Mostrar tela de Game Over
}
	