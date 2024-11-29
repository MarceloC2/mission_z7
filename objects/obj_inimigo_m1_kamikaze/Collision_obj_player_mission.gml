if (!global.pausado) {
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
	    
	} else {
	    instance_destroy(); // Destroi a nave kamikaze mesmo se o jogador for invulnerável
	}
}