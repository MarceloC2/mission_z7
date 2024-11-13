// Inicializando variáveis globais


// Criando as estruturas do menu com sprites
opcao1 = { sprite: spr_pause_button, id: 1, visivel: true, pos_x: 385, pos_y: 15 };
opcao2 = { sprite: spr_pause_menu, id: 2, visivel: true, pos_x: 35, pos_y: 160 };
opcao3 = { sprite: spr_som, id: 3, visivel: true, pos_x: 100, pos_y: 360 };
opcao4 = { sprite: spr_musica, id: 4, visivel: true, pos_x: 100, pos_y: 420 };
opcao5 = { sprite: spr_voltar, id: 5, visivel: true, pos_x: 100, pos_y: 560 };
opcao6 = { sprite: spr_icon_audio, id: 6, visivel: true, pos_x: 400, pos_y: 840 }; //x=500
opcao7 = { sprite: spr_desistir, id: 7, visivel: true, pos_x: 100, pos_y: 640 }; //x=500
opcao8 = { sprite: spr_jogo_lento, id: 8, visivel: true, pos_x: 100, pos_y: 840 }; //x=500


// Adicionando a variável para a sprite de fundo
fundo_sprite = spr_bg_menu; // Substitua 'spr_bg_menu' pela sua sprite de fundo


// Menu principal
inicio_menu = [opcao1];

// Menu de configurações
menu_configuracao = [opcao2, opcao3, opcao4, opcao5, opcao6, opcao7, opcao8];

// Inicializando o menu
menu = inicio_menu;
atual = 0;