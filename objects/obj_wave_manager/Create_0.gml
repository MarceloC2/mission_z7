/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Inicializar variáveis
/* 09/11
onda_atual = 1;
inimigos_restantes = 100;  // Total de inimigos na primeira onda
obstaculos_restantes = 10;  // Total de obstáculos entre ondas
subgrupo_tamanho = 10;
estado = "onda_inimigos";  // Estado inicial
alarm[0] = 1;  // Temporizador para a criação de subgrupos ou obstáculos

*/





alarm[0] = 1;  // Temporizador para a criação de subgrupos ou obstáculos
estado = "onda_inimigos";  // Estado inicial
wave_count = 0;
inimigos_restantes = 10;  // Total de inimigos na primeira onda

max_enemies_wave1 = 30;
enemies_per_block_wave1 = 5;
max_enemies_wave2 = 20; // Total de inimigos na segunda onda
enemies_per_block_wave2 = 4; // Número de inimigos por bloco na segunda onda
subgrupo_tamanho = 5;
enemy_block_count = 0;
enemies_destroyed = 0;
obstaculos_restantes = 5;


global.pausado = false; // Para garantir que a variável esteja inicializada
global.player_poder_fogo = 1;  // Poder inicial da arma do jogador
