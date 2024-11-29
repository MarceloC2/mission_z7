// Verifica se o jogo está pausado
if (global.pausado) {
	speed = 0;
    exit;
}

// Desacelerar jogo quando não houver toque
if (global.jogo_lento) {
    speed = 0.3;  // Reduz a velocidade para 10%
}else{
	speed = 6;
}

// Destruir tiro fora da tela
if (y > room_height + 50) {
    instance_destroy();
}
