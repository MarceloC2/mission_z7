/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Reduzir vida do inimigo
vida -= 1;
if (vida <= 0) {
    instance_destroy();
    global.inimigos_destruidos += 1;  // Incrementar contagem de inimigos destruídos
}
instance_destroy(other);  // Destruir o tiro do jogador

//other é o tiro que atinge o inimigo, assim apenas o tiro que atinge o objeto é destruido