if (global.pausado) {
    exit;
}
if (onda_atual == 1 && inimigos_restantes > 0) {
    // Criar um subgrupo de inimigos
    for (var _i = 0; _i < subgrupo_tamanho; _i++) {
        instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Inimigos", obj_inimigo1);
    }
    inimigos_restantes -= subgrupo_tamanho;
} else if (onda_atual == 1 && inimigos_restantes <= 0) {
    // Troca para os obstáculos
    instance_create_layer(display_get_width() / 2, 0, "Obstaculos", obj_obstacle_controller);
    onda_atual = 2;  // Avançar para a próxima onda
} else if (onda_atual == 2 && obstaculos_restantes <= 0) {
    // Começar a segunda onda de inimigos
    instance_create_layer(display_get_width() / 2, 0, "Inimigos", obj_wave_controller_2);
}

if (onda_atual == 2 && inimigos_restantes > 0) {
    // Criar um subgrupo de inimigos
    for (var _i = 0; _i < subgrupo_tamanho; _i++) {
        instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Inimigos", obj_inimigo2);
    }
    inimigos_restantes -= subgrupo_tamanho;
    alarm[0] = 60;  // Reativar alarme
}


alarm[0] = 60;  // Reativar alarme

