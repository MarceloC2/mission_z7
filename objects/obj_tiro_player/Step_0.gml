y -= speed;

// Verifica se o tiro saiu da tela
if (y < 0) {
    instance_destroy(); // Destroi o tiro se ele sair da tela
}
