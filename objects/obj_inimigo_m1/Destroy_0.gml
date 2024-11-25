// Evento Destroy no obj_inimigo_m1
global.pontuacao += pontos; // Adiciona pontos ao jogador
if (global.som) {
   obj_som.toggle_som(snd_explosao_inimigo, "play");
}

//criando a explosao
instance_create_layer(x,y, "Efeitos", obj_explosao);