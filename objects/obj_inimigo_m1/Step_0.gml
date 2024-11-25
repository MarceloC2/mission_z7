// Evento Step no obj_inimigo_m1
if (global.missao_atual > 1) { // Somente atirar em missões a partir da 2
    if (random(100) < 2) {
        instance_create_layer(x, y + 20, "Instances", obj_tiro_inimigo);
    }
}

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
