// Evento Collision no obj_player_mission com obj_tiro_inimigo
if (!invulneravel) { // Verifique se o jogador não está invulnerável
    hp -= other.dano; // Reduz a vida do jogador pelo dano do tiro
    instance_destroy(other); // Destroi o tiro ao colidir com o jogador
    invulneravel = true; // Torna o jogador invulnerável por um tempo
    tempo_invulneravel = 60; // Define a duração da invulnerabilidade
    if (hp <= 0) {
        instance_destroy(); // Destroi a nave do jogador se a vida chegar a zero
        // Adicione efeitos ou lógica adicional aqui, como uma explosão ou reiniciar a missão
    }
}
