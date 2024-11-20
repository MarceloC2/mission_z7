
// Verifica se o jogo está pausado
if (global.pausado) {
    exit;
}

// Define a margem adicional para aumentar a área de toque
var _padding = 70; // Valor determina a área de toque da nave do player

// Verificar se a nave foi selecionada
if (device_mouse_check_button_pressed(0, mb_left)) {
    var _touch_x = device_mouse_x(0);
    var _touch_y = device_mouse_y(0);
    if (point_in_rectangle(_touch_x, _touch_y, x - sprite_width / 2 - _padding, y - sprite_height / 2 - _padding, x + sprite_width / 2 + _padding, y + sprite_height / 2 + _padding)) {
        nave_selecionada = true;
    } else {
        nave_selecionada = false;
    }
}

// Se a nave estiver selecionada, ela se move com o toque
if (device_mouse_check_button(0, mb_left) && nave_selecionada) {
    var _touch_x = device_mouse_x(0);
    var _touch_y = device_mouse_y(0);
    
    // Manter a nave dentro dos limites da tela
    x = clamp(_touch_x, sprite_width / 2 - 40, room_width - sprite_width / 2 + 40);
    y = clamp(_touch_y, sprite_height / 2, room_height); //display_get_height() - sprite_height / 2
    
    //global.pausado = false; // Despausa o jogo quando tocar na tela

    // Verificar disparo contínuo com o toque na tela
    if (pode_disparar) {
        var tiro = instance_create_layer(x, y - 115, "Tiro", obj_tiro);
        tiro.poder = global.poder_tiro; // Ajustar poder do tiro
        
        // Ajustar o frame do tiro conforme o poder do tiro
        if (global.poder_tiro == 2) {
            tiro.image_index = 1; // Usar o segundo frame para o tiro poderoso
        } else {
            tiro.image_index = 0; // Usar o primeiro frame para o tiro normal
        }
        
        pode_disparar = false;
        alarm[0] = 10;  // Ajuste o tempo de recarga conforme necessário
    }
} else if (!device_mouse_check_button(0, mb_left)) {
    nave_selecionada = false;
}


// Desacelerar jogo quando não houver toque
if (!device_mouse_check_button(0, mb_left )&& global.funcao_jogo_lento) {
    global.jogo_lento = true;
} else {
    global.jogo_lento = false;
}


// Verificar se o jogador coletou um bônus de poder de fogo
if (place_meeting(x, y, obj_powerup_firepower)) {
    global.poder_tiro = 2; // Aumentar poder de fogo
    instance_destroy(obj_powerup_firepower);
}



// Verificar vida e criar power-ups de vida
if (global.vida_player < 40 && instance_number(obj_vida) == 0) {
    instance_create_layer(random(room_width), -50, "Instances", obj_vida);
}

if (global.vida_player < 80 && (global.onda == 2 || global.onda == 3) && instance_number(obj_vida) == 0) {
    instance_create_layer(random(room_width), -50, "Instances", obj_vida);
}

// Verificar colisão com power-ups de vida
var vida_instance = instance_place(x, y, obj_vida);
if (vida_instance != noone) {
    global.vida_player = min(global.vida_player + 20, 100);
    with (vida_instance) {
        instance_destroy(); // Destruir o power-up de vida
    }
}



// Desativar escudo após o tempo (usando alarm[1] para o escudo)
if (alarm[1] <= 0 && global.escudo_ativo) {
    global.escudo_ativo = false;
    image_index = 0; // Voltar para o frame normal
}


if (global.tempo_escudo > 0) {
	global.tempo_escudo -= 1;
	} else if (global.escudo_ativo){
		global.escudo_ativo = false;
	}



// Verificar colisão com inimigos e obstáculos
if (!global.escudo_ativo) {
    if (place_meeting(x, y, obj_inimigos) || place_meeting(x, y, obj_obstaculos)) {
        global.vida_player -= 20; // Exemplo de dano
    }
}

// Controle de disparo
if (pode_disparar) {
    // Código para o disparo aqui
    pode_disparar = false;
    alarm[0] = 10; // Tempo entre os disparos
}

