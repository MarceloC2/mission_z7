/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Criando partículas
repeat(random_range(10, 100)) {
    instance_create_layer(x, y, layer, obj_particula);
}

// Atualizar pontuação ou outro feedback
global.inimigos_destruidos += 1;

// Verificar se é hora de criar bônus
if (global.inimigos_destruidos % 20 == 0) {  // Exemplo: a cada 20 inimigos
    instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Bonus", obj_bonus_arma);
}

