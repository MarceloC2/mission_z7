// Evento Step no obj_inimigo_m6_kamikaze
if (target_player || global.kamikaze_ataque) {
    // Atualizar a direção para seguir o jogador
    var dx = obj_player_mission.x - x;
    var dy = obj_player_mission.y - y;
    var dist = point_distance(x, y, obj_player_mission.x, obj_player_mission.y);
    hspeed = (dx / dist) * 5;
    vspeed = (dy / dist) * 5;

    // Movimentar a nave kamikaze
    x += hspeed;
    y += vspeed;

    // Verificar se a nave kamikaze atingiu o jogador ou saiu da tela
    if (instance_exists(obj_player_mission) && place_meeting(x, y, obj_player_mission)) {
        obj_player_mission.hp -= 1; // Aplica dano ao jogador
        instance_destroy(); // Destroi a nave kamikaze
        global.kamikaze_ataque = false; // Reseta o estado de ataque kamikaze
    } else if (x < 0 || x > room_width || y < 0 || y > room_height) {
        instance_destroy(); // Destroi a nave kamikaze se sair da tela
        global.kamikaze_ataque = false; // Reseta o estado de ataque kamikaze
    }
} else {
    // Reseta o cooldown se não estiver em ataque kamikaze
    cooldown_kamikaze -= 1;
}
