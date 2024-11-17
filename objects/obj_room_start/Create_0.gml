// Inicializa objetos e variáveis necessárias no início da sala
instance_create_layer(0, 0, "Controladores", obj_wave_manager);

// Inicializar variáveis globais
global.jogo_lento = false;
global.vida_player = 100;  // Vida começa com 100%
global.inimigos_destruidos = 0;
global.pontos = 0;  // Inicializar pontos
global.funcao_jogo_lento = true; //essa irá controlar o uso do jogo lento


/*
// Inicializa objetos e variáveis necessárias no início da sala
instance_create_layer(0, 0, "Controladores", obj_wave_manager);

// Inicializar variáveis globais
global.jogo_lento = false;
global.player_vida = 3;
global.inimigos_destruidos = 0;

// Configurar as dimensões da janela do jogo
window_set_size(540, 960);
// Ajustar a janela do jogo para as dimensões da sala
display_set_gui_size(540, 960);
*/