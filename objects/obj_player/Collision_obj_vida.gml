/*é aumentada em 20 unidades, mas o valor máximo permitido é 100. 
A função min garante que a vida do jogador não ultrapasse 100*/
global.vida_player = min(global.vida_player + 20, 100);
instance_destroy(other); // Destruir o power-up de vida
    