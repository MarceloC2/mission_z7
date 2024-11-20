audio_stop_all();
obj_som.toggle_musica(snd_music_intro,"play");
room_goto(rm_vitoria); // Vai para a sala de vitória


/*vou desabilitar, acho que esse codigo está ererado

if (global.pausado) {
    exit;
}

if (estado == "onda_inimigos") {
    if (inimigos_restantes > 0) {
        // Criar um subgrupo de inimigos com espaçamento
        var _num_inimigos = min(subgrupo_tamanho, inimigos_restantes);
        for (var _i = 0; _i < _num_inimigos; _i++) {
            // Gerar posição aleatória com espaçamento mínimo
            var _pos_x = irandom_range(50, display_get_width() - 50);
            var _pos_y = -50 - (_i * 120); // Espaçamento vertical entre inimigos

            // Verificar se a posição está livre
            if (place_free(_pos_x, _pos_y)) {
                instance_create_layer(_pos_x, _pos_y, "Inimigos", obj_inimigo1);
            }
        }
        inimigos_restantes -= _num_inimigos;
    } else {
        // Transição para obstáculos
        estado = "obstaculos";
        alarm[0] = 120;  // Intervalo para iniciar os obstáculos
    }
} else if (estado == "obstaculos") {
    if (obstaculos_restantes > 0) {
        // Criar um subgrupo de obstáculos
        for (var _i = 0; _i < subgrupo_tamanho / 2; _i++) {
            var _tipo_obstaculo = choose(obj_asteroid, obj_fireball, obj_iceball);
            instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Obstaculos", _tipo_obstaculo);
        }
        obstaculos_restantes -= subgrupo_tamanho / 2;
    } else {
        // Transição para a segunda onda
        onda_atual = 2;
        inimigos_restantes = 100;
        estado = "onda_inimigos_forte";
        alarm[0] = 60;  // Intervalo para iniciar a segunda onda
    }
} else if (estado == "onda_inimigos_forte") {
    if (inimigos_restantes > 0) {
        // Criar um subgrupo de inimigos mais fortes
        var _num_inimigos = min(subgrupo_tamanho, inimigos_restantes);
        for (var _i = 0; _i < _num_inimigos; _i++) {
            var _pos_x = irandom_range(50, display_get_width() - 50);
            var _pos_y = -50 - (_i * 120); // Espaçamento vertical entre inimigos
            if (place_free(_pos_x, _pos_y)) {
                instance_create_layer(_pos_x, _pos_y, "Inimigos", obj_inimigo2);
            }
        }
        inimigos_restantes -= _num_inimigos;
    }
}
alarm[0] = 100;  // Reativar alarme com intervalo ajustado
*/