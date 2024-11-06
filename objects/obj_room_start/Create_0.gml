// Inicializa objetos e variáveis necessárias no início da sala
instance_create_layer(0, 0, "Controladores", obj_wave_manager);

// Inicializar variáveis globais
global.jogo_lento = false;
global.player_vida = 3;
global.inimigos_destruidos = 0;  // Contagem inicial de inimigos destruídos
