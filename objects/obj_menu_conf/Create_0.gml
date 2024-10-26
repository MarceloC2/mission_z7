/// @description Configuração do Menu

// Criando o submenu de configurações
opcao1 = { texto: "Ativar/Desativar Som", funcao: function() { obj_som.alternar_som(); } };
opcao2 = { texto: "Ativar/Desativar Música", funcao: function() { obj_som.alternar_musica(); } };
opcao3 = { texto: "Aumentar Volume Som", funcao: function() { obj_som.ajustar_volume_som(global.volume_som + 0.1); } };
opcao4 = { texto: "Diminuir Volume Som", funcao: function() { obj_som.ajustar_volume_som(global.volume_som - 0.1); } };
opcao5 = { texto: "Aumentar Volume Música", funcao: function() { obj_som.ajustar_volume_musica(global.volume_musica + 0.1); } };
opcao6 = { texto: "Diminuir Volume Música", funcao: function() { obj_som.ajustar_volume_musica(global.volume_musica - 0.1); } };
opcao7 = { texto: "Voltar", funcao: function() { room_goto(rm_menu); } };

// Menu de configurações
menu_configuracoes = [opcao1, opcao2, opcao3, opcao4, opcao5, opcao6, opcao7];

// Inicializando o menu
menu = menu_configuracoes;

// Variável menu atual
atual = 0;

// Margem do menu
margem = 0;


/* codigo sem submenu FUNCIONANDO
/// @description Configuração do Menu

// Criando as estruturas do menu
opcao1 = { texto: "Missão", funcao: function() { show_message("Jogar Missão"); } };
opcao2 = { texto: "Sobrevivencia", funcao: function() { room_goto(rm_sobrevivencia); } };
opcao3 = { texto: "Configurações Som", funcao: function() { obj_som_musica.alternar_som(); } };
opcao4 = { texto: "Configurações Musica", funcao: function() { obj_som_musica.alternar_musica(); } };
opcao5 = { texto: "Crédito", funcao: function() { show_message("Créditos: Equipe Cest"); } };
opcao6 = { texto: "Sair", funcao: function() { game_end(); } };

// Menu principal
menu_principal = [opcao1, opcao2, opcao3, opcao4, opcao5, opcao6];
menu = menu_principal;

// Variável menu atual
atual = 0;

// Margem do menu
margem = 0;
*/