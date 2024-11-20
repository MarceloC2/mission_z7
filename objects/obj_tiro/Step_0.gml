/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

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
if (y < -90) {
    instance_destroy();
}




/*
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




//Destruir tiro para limpar memória. eliminar objeto depois que sai da tela
if (y < -90){
	instance_destroy();
}
*/