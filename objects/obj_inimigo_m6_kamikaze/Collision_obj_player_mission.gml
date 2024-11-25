// Evento Collision no obj_inimigo_m6_kamikaze com obj_player_mission
if (global.som){
	obj_som.toggle_som(snd_kamekaze,"play");
}
if (!other.invulneravel) { // Verifique se o jogador não está invulnerável
    other.hp -= 5; // Aplica dano ao jogador
    instance_destroy(); // Destroi a nave kamikaze
    global.kamikaze_ataque = false; // Reseta o estado de ataque kamikaze

    // Torna o jogador invulnerável por um tempo
    other.invulneravel = true; 
    other.tempo_invulneravel = 60; // Define a duração da invulnerabilidade
    // Adicione efeitos visuais ou sonoros adicionais, se necessário
} else {
    instance_destroy(); // Destroi a nave kamikaze mesmo se o jogador for invulnerável
}
