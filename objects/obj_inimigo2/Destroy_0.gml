// Adicionar pontos ao destruir inimigo
global.pontos += 2;  // Exemplo: 20 pontos por inimigo destruído

if (y > room_height + 50) {
    instance_destroy();
}else{
	// Criando partículas
	repeat(random_range(10, 200)) {
	    instance_create_layer(x, y, layer, obj_particula);
	}
}
//criando a explosão
instance_create_layer(x,y,"efeitos",obj_explosao);


// Atualizar pontuação ou outro feedback
global.inimigos_destruidos += 1;

// Verificar se é hora de criar bônus
if (global.inimigos_destruidos % 20 == 0) {  // Exemplo: a cada 20 inimigos
    instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Bonus", obj_powerup_firepower);
}

