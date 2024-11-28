// Evento Step no obj_player_mission
if (estado == "jogando") {
    // Lógica de controle normal do jogador
    // Verificar entrada do jogador e mover a nave

    // Se a nave estiver selecionada, ela se move com o toque
    if (device_mouse_check_button(0, mb_left) && nave_selecionada) {
        var _touch_x = device_mouse_x(0);
        var _touch_y = device_mouse_y(0);
        
        // Manter a nave dentro dos limites da tela
        x = clamp(_touch_x, sprite_width / 2, room_width - sprite_width / 2);
        y = clamp(_touch_y, sprite_height / 2 + 50, room_height); // Limitar a nave na parte superior

        // Verificar disparo contínuo com o toque na tela
        if (pode_disparar) {
            var tiro = instance_create_layer(x, y - 20, "Instances", obj_tiro_player);
            tiro.dano = 1; // Define o dano do tiro do jogador
            pode_disparar = false;
            alarm[0] = 14;  // Ajusta o tempo de recarga conforme necessário
        }
    } else if (device_mouse_check_button_pressed(0, mb_left)) {
        var _touch_x = device_mouse_x(0);
        var _touch_y = device_mouse_y(0);
        
        // Verificar se o toque inicial está na nave
        if (point_in_rectangle(_touch_x, _touch_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
            nave_selecionada = true;
        }
    } else if (!device_mouse_check_button(0, mb_left)) {
        nave_selecionada = false;
    }

    // Gerenciamento de invulnerabilidade 
    if (invulneravel) { 
        tempo_invulneravel -= 1; 
        if (tempo_invulneravel <= 0) {
            invulneravel = false;
        }
        // Efeito visual para indicar invulnerabilidade 
        image_alpha = 0.5 + 0.5 * sin(tempo_invulneravel * 0.3); 
    } else { 
        image_alpha = 1;
    }
} else if (estado == "saindo") {
    // Lógica para subir a nave automaticamente
    vspeed = -10; // Velocidade de subida
    if (y < -sprite_height) {
		global.jogador_troca_fase= true;
        instance_destroy(); // Destroi a nave quando sair da tela
    }
}






/*
// Evento Step no obj_player_mission

// Se a nave estiver selecionada, ela se move com o toque
if (device_mouse_check_button(0, mb_left) && nave_selecionada) {
    var _touch_x = device_mouse_x(0);
    var _touch_y = device_mouse_y(0);
    
    // Manter a nave dentro dos limites da tela
    x = clamp(_touch_x, sprite_width / 2, room_width - sprite_width / 2);
    y = clamp(_touch_y, sprite_height / 2 + 50, room_height); // Limitar a nave na parte superior

    // Verificar disparo contínuo com o toque na tela
    if (pode_disparar) {
        var tiro = instance_create_layer(x, y - 20, "Instances", obj_tiro_player);
        tiro.dano = 1; // Define o dano do tiro do jogador
        pode_disparar = false;
        alarm[0] = 14;  // Ajusta o tempo de recarga conforme necessário
    }
} else if (device_mouse_check_button_pressed(0, mb_left)) {
    var _touch_x = device_mouse_x(0);
    var _touch_y = device_mouse_y(0);
    
    // Verificar se o toque inicial está na nave
    if (point_in_rectangle(_touch_x, _touch_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
        nave_selecionada = true;
    }
} else if (!device_mouse_check_button(0, mb_left)) {
    nave_selecionada = false;
}

// Gerenciamento de invulnerabilidade 
if (invulneravel) { 
    tempo_invulneravel -= 1; 
    if (tempo_invulneravel <= 0) {
        invulneravel = false;
    }
    // Efeito visual para indicar invulnerabilidade 
    image_alpha = 0.5 + 0.5 * sin(tempo_invulneravel * 0.3); 
} else { 
    image_alpha = 1;
}


*/