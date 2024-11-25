// Inicializando variáveis globais
global.pausado = false;
// Criando instância botão mute
botao_mute = instance_create_layer(400, 840, "Instances", obj_bt_audio_menu_principal_1);
botao_mute.visible = false; // Inicialmente invisível

// Criando as estruturas do menu com sprites
opcao1 = { sprite: spr_pause_button, id: 1, visivel: true, pos_x: 400, pos_y: 30 };
opcao2 = { sprite: spr_pause_menu, id: 2, visivel: true, pos_x: 35, pos_y: 160 };
opcao3 = { sprite: spr_som, id: 3, visivel: true, pos_x: 100, pos_y: 360 };
opcao4 = { sprite: spr_musica, id: 4, visivel: true, pos_x: 100, pos_y: 460 };
opcao5 = { sprite: spr_voltar, id: 5, visivel: true, pos_x: 100, pos_y: 560 };
opcao6 = { sprite: spr_desistir, id: 6, visivel: true, pos_x: 100, pos_y: 640 };

// Adicionando a variável para a sprite de fundo
fundo_sprite = spr_bg_menu; // Substitua 'spr_bg_menu' pela sua sprite de fundo

// Menu principal
inicio_menu = [opcao1];

// Menu de configurações
menu_configuracao = [opcao2, opcao3, opcao4, opcao5, opcao6];

// Inicializando o menu
menu = inicio_menu;
atual = 0;
