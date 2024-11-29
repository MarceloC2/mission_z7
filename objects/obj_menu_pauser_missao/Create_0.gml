// Inicializando variáveis globais
global.pausado = false;
// Criando instância botão mute
botao_mute = instance_create_layer(400, 840, "Instances", obj_bt_audio_menu_jogo);
botao_mute.visible = false; // Inicialmente invisível

// Criando as estruturas do menu com sprites
opcao1 = { sprite: spr_pause_button, id: 1, visivel: true, pos_x: 400, pos_y: 30 };
opcao2 = { sprite: spr_voltar, id: 2, visivel: true, pos_x: 100, pos_y: 560 };
opcao3 = { sprite: spr_desistir, id: 3, visivel: true, pos_x: 100, pos_y: 640 };

// Adicionando a variável para a sprite de fundo
fundo_sprite = spr_bg_menu;

// Menu principal
inicio_menu = [opcao1];

// Menu de configurações
menu_configuracao = [opcao2, opcao3];

// Inicializando o menu
menu = inicio_menu;
atual = 0;
