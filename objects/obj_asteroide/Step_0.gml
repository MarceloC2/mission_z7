/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica se o jogo está pausado
if (global.pausado) {
    exit;
}

// Desacelerar jogo quando não houver toque
if (global.jogo_lento) {
    speed = speed * 0.1; // Reduz a velocidade para 10%
}

// Destruir obstáculos fora da tela
if (y > display_get_height() + 50) {
    instance_destroy();
}
