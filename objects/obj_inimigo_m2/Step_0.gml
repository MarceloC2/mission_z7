
// Evento Step no obj_inimigo_m1

// Movimenta o inimigo para sua posição de formação
if (x < target_x) {
    x += speed;
} else if (x > target_x) {
    x -= speed;
}

if (y < target_y) {
    y += speed;
} else if (y > target_y) {
    y -= speed;
}


// Evento Step no obj_inimigo_m2

// Lógica de tiro
cooldown_tiro -= 1;
if (cooldown_tiro <= 0) {
    instance_create_layer(x, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
    cooldown_tiro = 240; // Redefine o cooldown para o próximo tiro
}
