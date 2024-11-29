// Evento Step no obj_inimigo_m4_circular
if (!global.pausado) {
    angulo += 0.1; // Ajuste o valor para controlar a velocidade do movimento circular
    x = target_x + raio * cos(angulo);
    y = target_y + raio * sin(angulo);
    cooldown_tiro -= 1;
    if (cooldown_tiro <= 0) {
        instance_create_layer(x, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
        cooldown_tiro = irandom_range(100, 300); // Redefine o tempo de recarga aleatoriamente
    }
}