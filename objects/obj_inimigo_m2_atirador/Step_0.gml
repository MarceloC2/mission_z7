// Evento Step no obj_inimigo_m2_atirador
cooldown_tiro -= 1;
if (cooldown_tiro <= 0) {
    instance_create_layer(x, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
    cooldown_tiro = 250;
}
