// Incrementa a vida do jogador, garantindo que não ultrapasse 10 vidas
hp = min(hp + 1, 10);

// Destroi o item de vida após coleta
instance_destroy(other);