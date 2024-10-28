// Inicializando variáveis globais

global.som = true;
global.musica = true;
global.volume_som = 1; // Volume do som (0 a 1)
global.volume_musica = 1; // Volume da música (0 a 1)




// Criando as estruturas do menu
opcao1 = { texto: "Missão", id: 1, visivel: true };
opcao2 = { texto: "Sobrevivencia", id: 2, visivel: true };
opcao3 = { texto: "Crédito", id: 3, visivel: true };
opcao4 = { texto: "Sair", id: 4, visivel: true };
opcao5 = { texto: "Ativar/Desativar Som", id: 5, visivel: true };
opcao6 = { texto: "Ativar/Desativar Música", id: 6, visivel: true };
opcao7 = { texto: "Aumentar Volume Som", id: 7, visivel: true };
opcao8 = { texto: "Diminuir Volume Som", id: 8, visivel: true };
opcao9 = { texto: "Aumentar Volume Música", id: 9, visivel: true };
opcao10 = { texto: "Diminuir Volume Música", id: 10, visivel: true };
opcao11 = { texto: "Voltar", id: 11, visivel: true, action: esconder_configuracoes() };

// Menu principal
menu_principal = [opcao1, opcao2, opcao3, opcao4];
// Menu de configurações
menu_configuracao = [opcao5, opcao6, opcao7, opcao8, opcao9, opcao10, opcao11];

// Inicializando o menu
menu = menu_principal;

// Variável menu atual
atual = 0;

// Margem do menu
margem = 0;
