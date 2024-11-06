/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Verifica se o jogo está pausado
if (global.pausado) {
    exit;
}

// Desacelerar jogo quando não houver toque
if (global.jogo_lento) {
    speed = (1 + global.level) * 0.1; // Reduz a velocidade para 10%
} else {
    speed = 1 + global.level;
}

// Lógica normal do jogo
x = meux * 90;




/*
if (global.pausado) {
    speed = 0;
    exit;
}

x = meux * 90;
if (global.jogo_lento) {
    speed = 1.5 * 0.1;
} else {
    speed = 1.5;
}
*/