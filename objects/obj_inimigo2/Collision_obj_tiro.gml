/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Reduzir vida do inimigo
vida -= 1;
if (vida <= 0) {
    instance_destroy();
}
