// Evento Step no obj_tiro_inimigo
// Movimenta o tiro para baixo conforme a velocidade definida
if (!global.pausado) {
	y += speed;

	// Verifica se o tiro saiu da tela
	if (y > room_height) {
	    instance_destroy(); // Destroi o tiro se ele sair da tela
	}
}