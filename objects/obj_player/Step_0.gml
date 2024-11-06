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






//criando rastro
//instance_create_layer(x,y, layer, obj_player1_rastro);

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


