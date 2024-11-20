// Movimento dos obstáculos no evento Step
/*
if (!global.pausado) {
    if (global.funcao_jogo_lento && !device_mouse_check_button(0, mb_left)) {
        y += velocidade_original * 0.6; // Reduzir a velocidade pela metade
    } else {
        y += velocidade_original; // Usar a velocidade original
    }


    // Verificar colisão com os tiros do jogador
    if (place_meeting(x, y, obj_tiro)) {
        instance_destroy(); // Destruir o obstáculo
        with (other) { instance_destroy(); } // Destruir o tiro do jogador
    }
}
*/

// Evento Step do obj_obstaculos
if (!global.pausado) {
    if (global.funcao_jogo_lento && !device_mouse_check_button(0, mb_left)) {
        y += velocidade_original * 0.5; // Reduzir a velocidade pela metade
    } else {
        y += velocidade_original; // Usar a velocidade original
    }

    // Verificar colisão com o jogador
    if (place_meeting(x, y, obj_player)) {
        global.vida_player -= 20; // Exemplo de dano
		global.pontos -= global.tipo_obstaculo;  // jogador perde pontuação conforme tipo de obstaculo
        instance_destroy(); // Destruir o obstáculo
    }

    // Verificar colisão com os tiros do jogador
    var tiro_encontrado = instance_place(x, y, obj_tiro);
    if (tiro_encontrado != noone) {
        resistencia -= global.player_poder_fogo;
        if (resistencia <= 0) {
			global.obstaculos_destruidos++; //contador de obstaculos destruidos
			global.pontos += global.tipo_obstaculo;  // jogador ganha pontuação conforme tipo de obstaculo
            instance_destroy(); // Destruir o obstáculo
        }
        with (tiro_encontrado) {
            instance_destroy(); // Destruir o tiro do jogador
        }
    }
	// Verificar se o obstáculo saiu da tela
    if (y > room_height || y < -sprite_height || x > room_width || x < -sprite_width) {
		global.pontos -= global.tipo_obstaculo;
        instance_destroy(); // Destruir inimigos que saem da tela
    }
}


