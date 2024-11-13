/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verificar movimento e atualizar posição
/*
// Verifica se o jogo está pausado
if (global.pausado) {
    exit;
}

// Verificar se a nave foi selecionada
if (device_mouse_check_button_pressed(0, mb_left)) {
    var touch_x = device_mouse_x(0);
    var touch_y = device_mouse_y(0);
    if (point_in_rectangle(touch_x, touch_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
        nave_selecionada = true;
    } else {
        nave_selecionada = false;
    }
}

// Se a nave estiver selecionada, ela se move com o toque
if (device_mouse_check_button(0, mb_left) && nave_selecionada) {
    var touch_x = device_mouse_x(0);
    var touch_y = device_mouse_y(0);
    x = touch_x;
    y = touch_y;
    global.pausado = false; // Despausa o jogo quando tocar na tela

    // Verificar disparo contínuo com o toque na tela
    if (pode_disparar) {
        instance_create_layer(x, y - 115, "Tiro", obj_tiro);
        pode_disparar = false;
        alarm[0] = 10;  // Ajuste o tempo de recarga conforme necessário
    }
} else if (!device_mouse_check_button(0, mb_left)) {
    nave_selecionada = false;
}

// Desacelerar jogo quando não houver toque
if (!device_mouse_check_button(0, mb_left)) {
    global.jogo_lento = true;
} else {
    global.jogo_lento = false;
}
*/

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
        pode_disparar = false;
        alarm[0] = 10;  // Ajuste o tempo de recarga conforme necessário
    }
} else if (!device_mouse_check_button(0, mb_left)) {
    nave_selecionada = false;
}

// Desacelerar jogo quando não houver toque
if (!device_mouse_check_button(0, mb_left)) {
    global.jogo_lento = true;
} else {
    global.jogo_lento = false;
}

// Verificar se a vida está abaixo de 40% e criar objeto de vida
if (global.vida_player < 0.4) {
    if (instance_number(obj_vida) == 0) {
        instance_create_layer(random_range(0, room_width), random_range(0, room_height), "PowerUps", obj_vida);
    }
}

// Verificar se a vida está abaixo de 80% entre as ondas
if (global.vida_player < 0.8) {
    if (wave_count == 1 && instance_number(obj_enemy_medium) == 0) {
        if (instance_number(obj_vida) == 0) {
            instance_create_layer(random_range(0, room_width), random_range(0, room_height), "PowerUps", obj_vida);
        }
    }
}

// Ativar escudo após eliminar 50 inimigos
if (global.inimigos_destruidos >= 50 && !global.escudo_ativo) {
    global.escudo_ativo = true;
    tempo_escudo = 30 * room_speed; // Escudo dura 30 segundos
    sprite_index = spr_player_escudo; // Mudar aparência da nave para indicar escudo ativo
}

// Reduzir o tempo do escudo ativo
if (global.escudo_ativo) {
    tempo_escudo --;
    if (tempo_escudo <= 0) {
        global.escudo_ativo = false;
        sprite_index = spr_player1; // Restaurar aparência da nave
    }
}

// Verificar se o jogador coletou um bônus de poder de fogo
if (place_meeting(x, y, obj_powerup_firepower)) {
    global.poder_tiro = 2; // Aumentar poder de fogo
    obj_tiro.sprite_index = spr_tiro_poderoso; // Alterar aparência do tiro
    instance_destroy(obj_powerup_firepower);
}

// Criando rastro
//instance_create_layer(x, y, layer, obj_player_rastro);

/*
// Verificar se o jogo está pausado e se não está tocando na tela
if (global.pausado && !device_mouse_check_button(0, mb_left)) {
    exit;
}

// Verificar toque na tela para despausar
if (global.pausado && device_mouse_check_button(0, mb_left)) {
    global.pausado = false;
}

// Verificar se o jogo não está pausado e se não está tocando na tela para pausar
if (!global.pausado && !device_mouse_check_button(0, mb_left)) {
    global.pausado = true;
}

// Verificar movimento e atualizar posição
if (!global.pausado && device_mouse_check_button(0, mb_left)) {
    var touch_x = device_mouse_x(0);
    var touch_y = device_mouse_y(0);
    x = touch_x;
    y = touch_y;
    // Verificar disparo contínuo com o toque na tela
    if (pode_disparar) {
        instance_create_layer(x, y - 115, "Tiro", obj_tiro);
        pode_disparar = false;
        alarm[0] = 10;  // Ajuste o tempo de recarga conforme necessário
    }
}

//criando rastro
instance_create_layer(x,y, layer, obj_player1_rastro);
*/





/*
if (device_mouse_check_button(0, mb_left)) {
    var touch_x = device_mouse_x(0);
    var touch_y = device_mouse_y(0);
    x = touch_x;
    y = touch_y;
}

// Verificar disparo
if (pode_disparar) {
    instance_create_layer(x, y - 115, "Tiro", obj_tiro);
    pode_disparar = false;
    alarm[0] = 15;  // Ajuste o valor do temporizador conforme necessário
}
*/


