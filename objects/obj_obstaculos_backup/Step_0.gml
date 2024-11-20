// Movimento dos obstáculos no evento Step
if (!global.pausado && (!global.funcao_jogo_lento || device_mouse_check_button(0, mb_left))) {
    y += velocidade;

    // Verificar colisão com o jogador
    if (place_meeting(x, y, obj_player)) {
        global.vida_player -= 2; // Exemplo de dano
        instance_destroy();
    }
}
