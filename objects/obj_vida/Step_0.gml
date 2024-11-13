/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Mover o bônus para baixo na tela
y += 2; // Velocidade de queda, ajuste conforme necessário

// Destruir o bônus se sair da tela
if (y > room_height) {
    instance_destroy();
}
