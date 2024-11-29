// Criando as estruturas do menu com sprites
opcao1 = { sprite: spr_missao, id: 1, visivel: true, pos_x: 100, pos_y: 500 };
opcao2 = { sprite: spr_sobrevivencia, id: 2, visivel: true, pos_x: 100, pos_y: 560 };
opcao3 = { sprite: spr_credito, id: 3, visivel: true, pos_x: 100, pos_y: 620 };
opcao4 = { sprite: spr_sair, id: 4, visivel: true, pos_x: 100, pos_y: 680 };
opcao5 = { sprite: spr_icon_config, id: 5, visivel: true, pos_x: 45, pos_y: 860 };
opcao6 = { sprite: spr_voltar, id: 6, visivel: true, pos_x: 100, pos_y: 560 };



// Menu principal
menu_principal = [opcao1, opcao2, opcao3, opcao4, opcao5];

// Menu de configurações
menu_configuracao = [opcao6];

// Inicializando o menu
menu = menu_principal;
atual = 0;

// Criando instância botão mute
botao_mute = instance_create_layer(400, 860, "Instances", obj_bt_audio_menu_principal);
botao_mute.visible = true; // Inicialmente invisível
