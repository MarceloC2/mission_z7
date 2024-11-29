// Movimento e ações do inimigo no evento Step
if (!global.pausado) {
    if (global.funcao_jogo_lento && !device_mouse_check_button(0, mb_left)) {
        y += velocidade_original * 0.5; // Reduzir a velocidade pela metade
    } else {
        y += velocidade_original; // Usar a velocidade original
    }

 
	var _tiro_encontrado = instance_place(x, y, obj_tiro); 
	if (_tiro_encontrado != noone) { 
		resistencia -= global.player_poder_fogo; 
		if (resistencia <= 0) { 
			global.inimigos_destruidos++
			global.pontos += global.nivel_inimigo;  // jogador ganha pontuação conforme nivel do inimigo
			instance_destroy(); // Destruir o inimigo 
			} with (_tiro_encontrado) { 
				instance_destroy(); // Destruir o tiro do jogador
			}
	}
	
	// Verificar se o inimigo saiu da tela
    if (y > room_height || y < -sprite_height || x > room_width || x < -sprite_width) {
		global.pontos -= global.nivel_inimigo;
        instance_destroy(); // Destruir inimigos que saem da tela
    }
}
