
// Inicializando variáveis no evento Create
global.onda = 1;
global.inimigos_restantes = 88; // Inicialização da variável
global.player_poder_fogo = 1;
global.inimigos_criados = 0;
global.escudo_criado = false;
global.vida_40_coletada = false;
global.vida_80_coletada = false;


subgrupo_tamanho = 10; // Defina o tamanho do subgrupo de inimigos


load_high_score();

if (!variable_global_exists("melhor_pontuacao")) { global.melhor_pontuacao = 0; }