// Evento Collision no obj_vida com obj_player_mission
if (other.hp != undefined) {
    other.hp += 3; // Adiciona 3 pontos de vida ao jogador
    instance_destroy(); // Destroi o objeto de vida após a coleta
} else {
    show_debug_message("Erro: variável hp não definida no jogador");
}
