// Inicializando variáveis globais
global.som = true;
global.musica = true;
global.volume_som = 1; // Volume do som (0 a 1)
global.volume_musica = 1; // Volume da música (0 a 1)

global.volume_som_barra_largura = 150;
global.volume_musica_barra_largura = 150;

// Criando as estruturas do menu com sprites
opcao1 = { sprite: spr_missao, id: 1, visivel: true };
opcao2 = { sprite: spr_sobrevivencia, id: 2, visivel: true };
opcao3 = { sprite: spr_credito, id: 3, visivel: true };
opcao4 = { sprite: spr_sair, id: 4, visivel: true };
//opcao5 = { sprite: spr_icon_config, id: 5, visivel: true };
opcao5 = { sprite: spr_som, id: 5, visivel: true };
opcao6 = { sprite: spr_musica, id: 6, visivel: true };
opcao7 = { sprite: spr_voltar, id: 7, visivel: true };



// Menu principal
menu_principal = [opcao1, opcao2, opcao3, opcao4];
// Menu de configurações
menu_configuracao = [opcao5, opcao6, opcao7];
// Inicializando o menu
menu = menu_principal;
// Variável menu atual
atual = 0;
// Margem do menu
margem = 0;