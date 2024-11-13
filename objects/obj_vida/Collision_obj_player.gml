/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Aumentar a vida do jogador
global.vida_player += 0.2;
if (global.vida_player > 1) {
    global.vida_player = 1; // Limitar a vida ao máximo de 100%
}

// Destruir o bônus
instance_destroy();
