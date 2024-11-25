// Evento Collision no obj_inimigo_m4_circular com obj_tiro_player
hp -= other.dano;
instance_destroy(other);
if (hp <= 0) {
    global.eliminacoes_circular += 1; // Incrementa a contagem de eliminações
    if (global.eliminacoes_circular >= 5 && !instance_exists(obj_vida)) {
        // Cria o objeto de vida se ainda não existir
        instance_create_layer(x, y, "Instances", obj_vida_missao);
        global.eliminacoes_circular = 0; // Reseta a contagem
    }
    instance_destroy();
    global.pontuacao += pontos;
    if (global.som) {
        obj_som.toggle_som(snd_explosao_inimigo, "play");
    }
}
