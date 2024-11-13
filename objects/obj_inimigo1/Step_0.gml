/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica se o jogo está pausado
// Verifica se o jogo está pausado

if (global.pausado) {
	speed=0;
    exit;
}
// Desacelerar jogo quando não houver toque
if (global.jogo_lento) {
    speed = (0.5 + global.level) * 0.1; // Reduz a velocidade para 10%
} else {
    speed = 0.3 + global.level;
}

// Lógica normal do jogo
x = meux * 89;

// Destruir nave inimiga fora da tela, (limpar memoria)
if (y > room_height + 50) {
    instance_destroy();
}



/*
// Verifica se o jogo está pausado
if (global.pausado) {
    speed = 0;
    exit;
}

x = meux * 90;
if (global.jogo_lento) {
    speed = 1 * 0.1;
} else {
    speed = 1;
}
*/



/* segundo codigo
if (global.pausado) {
    speed = 0;
    exit;
}

// Lógica normal do jogo
x = meux * 90;

// Desacelerar jogo quando não houver toque
if (global.jogo_lento) {
    speed = (1 + global.level) * 0.1; // Reduz a velocidade para 10%
} else {
    speed = 1 + global.level;
}

*/






/* primeiro codigo
// Verifica se o jogo está pausado
if (global.pausado) {
    if (speed != 0) { 
        saved_speed = speed;
        saved_direction = direction;
        speed = 0;
        direction = 0;
    }
    exit;
} else {
    if (speed == 0) {
        speed = saved_speed;
        direction = saved_direction;
    }
}

// Lógica normal do jogo
x = meux * 90;
speed = 1 + global.level;
*/