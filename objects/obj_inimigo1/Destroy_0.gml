// Adicionar pontos ao destruir inimigo
global.pontos += 1;  // Exemplo: 10 pontos por inimigo destruído

// Criando partículas
repeat(random_range(10, 100)) {
    instance_create_layer(x, y, layer, obj_particula);
}
