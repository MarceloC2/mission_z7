// Inicializando variáveis
alarm[0] = 10;  // Ajuste o tempo de recarga conforme necessário
randomize();  // forçar mudança de seed para diversificar as ações do jogo
pode_disparar = true;
nave_selecionada = false;
wave_count = 0; // Inicialize a variável wave_count com um valor apropriado

// Inicializando a vida do jogador
// global.vida_player = 1; // Vida começa com 100%  coloquei no obj_room_start

// Inicializando o escudo do jogador
global.escudo_ativo = false;
tempo_escudo = 100;

// Inicializando o poder de fogo do jogador
global.poder_tiro = 1; // Poder de fogo básico


