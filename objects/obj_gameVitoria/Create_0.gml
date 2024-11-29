global.melhor_pontuacao = global.melhor_pontuacao || 0; // Inicializar a melhor pontuação se não existir
// Criando as estruturas do menu com sprites
opcao1 = { sprite: spr_sim, id: 1, visivel: true, pos_x: 100, pos_y: 700 };
opcao2 = { sprite: spr_nao, id: 2, visivel: true, pos_x: 100, pos_y: 760 };

// Menu resposta
menu_resposta = [opcao1, opcao2];
atual = 0;

// Verifica e atualiza a melhor pontuação 
if (global.pontos > global.melhor_pontuacao) { 
	global.melhor_pontuacao = global.pontos; 
}
save_high_score();