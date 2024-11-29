// Evento Step do obj_escudo
if (!global.pausado) {
    if (global.funcao_jogo_lento && !device_mouse_check_button(0, mb_left)) {
        x += lengthdir_x(velocidade_original * 0.5, direcao);
        y += lengthdir_y(velocidade_original * 0.5, direcao);
    } else {
        x += lengthdir_x(velocidade_original, direcao);
        y += lengthdir_y(velocidade_original, direcao);
    }

    // Verificar colisão com o jogador (isso já será tratado pelo evento de colisão no obj_player)
}


// Destruir o bônus se sair da tela
if (y > room_height) {
    instance_destroy();
}
