// Evento Step no obj_chefe_m2


// Inverter direção ao atingir as bordas da sala
if (x >= room_width - sprite_width) {
    direction = 180;
}
if (x <=2 ){
	direction = 1;
}

// Lógica de ataque
cooldown_tiro -= 1;
if (cooldown_tiro <= 0) {
    instance_create_layer(x, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
    cooldown_tiro = 60; // Redefine o cooldown para o próximo tiro
}



// Lógica de ataque
cooldown_tiro -= 1;
if (cooldown_tiro <= 0) {
    // O chefe dispara três tiros de uma vez em diferentes direções
    instance_create_layer(x, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
    instance_create_layer(x - 10, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
    instance_create_layer(x + 10, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
    cooldown_tiro = 45; // Redefine o cooldown para o próximo tiro
}
