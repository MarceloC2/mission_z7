/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!global.pausado) {
    global.level += 0.3;
}else{
	exit;
}



// Desacelerar criação de inimigos quando não houver toque
if (global.jogo_lento) {
    alarm[1] = 1200;
} else {
    alarm[1] = 300;
}



/*
if (!global.pausado) {
    // Subir nível
    global.level += 0.2;
}

// Reativando o alarme
alarm[1] = 300;
*/