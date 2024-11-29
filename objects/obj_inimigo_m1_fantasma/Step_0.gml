cooldown_invisibilidade -= 1;
if (cooldown_invisibilidade <= 0) {
    estado_invisivel = !estado_invisivel;
    if (estado_invisivel) {
        cooldown_invisibilidade = duracao_invisibilidade;
    } else {
        cooldown_invisibilidade = 120;
    }
}

if (estado_invisivel) {
    image_alpha = 0.5; // Transparência para indicar invisibilidade
} else {
    image_alpha = 1.0; // Visível
}
cooldown_tiro -= 1;
if (cooldown_tiro <= 0) {
    if (!estado_invisivel) {
        instance_create_layer(x, y + sprite_height / 2, "Instances", obj_tiro_inimigo);
    }
    cooldown_tiro = 300;
}
