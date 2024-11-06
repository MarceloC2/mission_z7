/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (obstaculos_restantes > 0) {
    // Criar um subgrupo de obstáculos
    for (var i = 0; i < subgrupo_tamanho; i++) {
        var tipo_obstaculo = choose(obj_asteroide, obj_bola_fogo, obj_bola_gelo);
        instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Obstaculos", tipo_obstaculo);
    }
    obstaculos_restantes -= subgrupo_tamanho;

    // Reativar alarme
    alarm[0] = 60;  // Ajuste o tempo de intervalo conforme necessário
}
