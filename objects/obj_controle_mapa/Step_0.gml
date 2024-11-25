// Evento Step no objeto controlador da sala da missão
if (missao_completa) {
    if (global.missao_atual == 1) {
        global.missao_1_completa = true;
    } else if (global.missao_atual == 2) {
        global.missao_2_completa = true;
    } else if (global.missao_atual == 3) {
        global.missao_3_completa = true;
    } else if (global.missao_atual == 4) {
        global.missao_4_completa = true;
    }
    missao_completa = false; // Reseta o status de missão completa
    room_goto(rm_mapa_missao_futuro); // Volta para o mapa de missões
}

/*
// Evento Step no obj_controle_mapa
if (global.missao_1_completa && !instance_exists(obj_missao2)) {
    // Desbloqueia a próxima missão
    instance_create_layer(200, 100, "Instances", obj_missao2);
}
*/