// Inicializa objetos e variáveis necessárias no início da sala
instance_create_layer(0, 0, "Controladores", obj_controlador_ondas);

// Inicializar variáveis globais
global.jogo_lento = false;
global.vida_player = 100;  // Vida começa com 100%
global.inimigos_destruidos = 0;
global.obstaculos_destruidos = 0;
global.pontos = 0;  // Inicializar pontos
global.funcao_jogo_lento = true; //essa irá controlar o uso do jogo lento
global.pausado = false;
