// Verifica se o jogo está pausado
if (global.pausado) {
    speed = 0;
    exit;
}

// Desacelerar jogo quando não houver toque
if (global.jogo_lento) {
    speed = saved_speed * 0.5; // Reduz a velocidade para 50%
} else {
    speed = saved_speed;
}

// Destruir tiro para limpar memória

if (y < 0) {
    instance_destroy(); // Destroi o tiro se ele sair da tela
}
