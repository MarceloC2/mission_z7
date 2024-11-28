// Inicializando variáveis
randomize();  // forçar mudança de seed para diversificar as ações do jogo
pode_disparar = true;
nave_selecionada = false;
wave_count = 0; // Inicialize a variável wave_count com um valor apropriado
nave_controlada = true; // Variável que indica se a nave está sob controle do jogador
// Inicializando o escudo do jogador
global.escudo_ativo = false;
global.tempo_escudo = 0;
// Inicializando o poder de fogo do jogador
global.poder_tiro = 1; // Poder de fogo básico
