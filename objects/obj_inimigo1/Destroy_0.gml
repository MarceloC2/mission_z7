// Adicionar pontos ao destruir inimigo
global.pontos += 1;  // Exemplo: 10 pontos por inimigo destruído



if (y > room_height + 50) {
    instance_destroy();
}else{
	// Criando partículas
	repeat(random_range(10, 200)) {
	    instance_create_layer(x, y, layer, obj_particula);
	}
}