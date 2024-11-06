if (onda_atual == 2 && inimigos_restantes > 0) {
    // Criar um subgrupo de inimigos
    for (var i = 0; i < subgrupo_tamanho; i++) {
        instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Inimigos", obj_inimigo2);
    }
    inimigos_restantes -= subgrupo_tamanho;
    alarm[0] = 60;  // Reativar alarme
}
