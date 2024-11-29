if (!global.pausado) {
// Inverter direção ao atingir as bordas da sala
	if (x >= room_width - sprite_width) {
	    direction = 180;
	}
	if (x <=2 ){
		direction = 1;
	}


	cooldown_tiro -= 1;
	if (cooldown_tiro <= 0) {
	    instance_create_layer(x, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
	    cooldown_tiro = 200;
	}
}