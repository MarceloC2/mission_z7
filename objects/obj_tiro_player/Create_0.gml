hp = 1; // Vida do inimigo
pontos = 10; // Pontos atribuídos ao destruir o inimigo

speed = 5; // Velocidade do tiro
dano = 1; // Dano que o tiro causa aos inimigos
direction = 90; // Direção para cima (em graus)
//image_angle = direction; // Rotaciona a imagem para a direção do movimento
if (global.som){
	obj_som.toggle_som(snd_tiro_laser,"play");
	}