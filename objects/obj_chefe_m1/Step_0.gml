// Evento Step no obj_chefe_m1


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

// Adicionar lógica para expelir naves kamikaze

cooldown_kamikaze -= 1;
if (cooldown_kamikaze <= 0) {
    // Expulsar uma nave kamikaze
    var kamikaze = instance_create_layer(x, y, "Instances", obj_inimigo_m6_kamikaze);
    global.kamikaze_ataque = true; // Definir estado de ataque kamikaze
    cooldown_kamikaze = 300; // Reiniciar o cooldown para a próxima nave kamikaze
}

