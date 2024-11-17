// Adicionar pontos ao destruir inimigo
global.pontos += 1;  // Exemplo: 10 pontos por inimigo destruído

//criando a explosão
instance_create_layer(x,y,"efeitos",obj_explosao);

if (y > room_height + 50) {
    instance_destroy();
}else{
	// Criando partículas
	repeat(random_range(10, 200)) {
	    instance_create_layer(x, y, "efeitos", obj_particula);
	}
}