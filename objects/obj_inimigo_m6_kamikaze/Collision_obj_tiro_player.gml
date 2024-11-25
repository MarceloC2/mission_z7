hp -= other.dano; // Reduz a vida do inimigo pelo dano do tiro
instance_destroy(other); // Destroi o tiro ao colidir com o inimigo
if (hp <= 0) {
    instance_destroy(); // Destroi o inimigo se a vida chegar a zero
    global.pontuacao += pontos; // Adiciona pontos ao jogador
    if (global.som) {
        obj_som.toggle_som(snd_explosao_inimigo, "play");
    }
}