
// Evento Collision no obj_chefe_m2 com obj_tiro_player
hp -= other.dano; // Reduz a vida do chefe pelo dano do tiro
instance_destroy(other); // Destroi o tiro ao colidir com o chefe
if (hp <= 0) {
    global.chefe_derrotado_m2 = true; // Marca o chefe como derrotado
    instance_destroy(); // Destroi o chefe se a vida chegar a zero
    global.pontuacao += 20; // Adiciona pontos ao jogador
    if (global.som) {
        obj_som.toggle_som(snd_explosao_chefe, "play");
    }
if (global.musica){
	obj_som.toggle_musica(snd_missao,"pause");
}
    // Volta para o mapa de missões e desbloqueia a próxima missão
    global.missao_2_completa = true;
    room_goto(rm_mapa_missao_futuro); // Direciona para a sala do mapa de missões
}
