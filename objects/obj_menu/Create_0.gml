// Inicializando variáveis globais
global.som = true;
global.musica = true;
global.volume_som = 1; // Volume do som (0 a 1)
global.volume_musica = 1; // Volume da música (0 a 1)
global.volume_som_barra_largura = 200;
global.volume_musica_barra_largura = 200;

// Criando as estruturas do menu com sprites
opcao1 = { sprite: spr_missao, id: 1, visivel: true, pos_x: 145, pos_y: 500 };
opcao2 = { sprite: spr_sobrevivencia, id: 2, visivel: true, pos_x: 145, pos_y: 560 };
opcao3 = { sprite: spr_credito, id: 3, visivel: true, pos_x: 145, pos_y: 620 };
opcao4 = { sprite: spr_sair, id: 4, visivel: true, pos_x: 145, pos_y: 680 };
opcao5 = { sprite: spr_icon_config, id: 5, visivel: true, pos_x: 45, pos_y: 860 };
opcao6 = { sprite: spr_icon_audio, id: 6, visivel: true, pos_x: 500, pos_y: 860 };
opcao7 = { sprite: spr_som, id: 7, visivel: true, pos_x: 145, pos_y: 560 };
opcao8 = { sprite: spr_musica, id: 8, visivel: true, pos_x: 145, pos_y: 620 };
opcao9 = { sprite: spr_voltar, id: 9, visivel: true, pos_x: 145, pos_y: 860 };
opcao10 = { sprite: spr_configuracao_menu, id: 10, visivel: true, pos_x: 80, pos_y: 160 };


// Menu principal
menu_principal = [opcao1, opcao2, opcao3, opcao4, opcao5, opcao6];

// Menu de configurações
menu_configuracao = [opcao7, opcao8, opcao9,opcao10];

// Inicializando o menu
menu = menu_principal;
atual = 0;

/*
// Definindo a visibilidade inicial dos objetos
with (obj_bt_audio) {
    x = 145; // Posicione de acordo com suas necessidades
    y = 400; // Posicione de acordo com suas necessidades
    visible = true;
}

with (obj_bt_config) {
    x = 200; // Posicione de acordo com suas necessidades
    y = 200; // Posicione de acordo com suas necessidades
    visible = true;
}
*/