/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
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
            var _pos_y = -50 - (_i * 60); // Espaçamento vertical entre inimigos

            // Verificar se a posição está livre
            if (place_free(_pos_x, _pos_y)) {
                instance_create_layer(_pos_x, _pos_y, "Inimigos", obj_inimigo1);
            }
        }
        inimigos_restantes -= _num_inimigos;
    } else {
        // Transição para obstáculos
        estado = "obstaculos";
        alarm[0] = 60;  // Intervalo para iniciar os obstáculos
    }
} else if (estado == "obstaculos") {
    if (obstaculos_restantes > 0) {
        // Criar um subgrupo de obstáculos
        for (var _i = 0; _i < subgrupo_tamanho / 2; _i++) {
            var _tipo_obstaculo = choose(obj_asteroide, obj_bola_fogo, obj_bola_gelo);
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
            var _pos_y = -50 - (_i * 60); // Espaçamento vertical entre inimigos
            if (place_free(_pos_x, _pos_y)) {
                instance_create_layer(_pos_x, _pos_y, "Inimigos", obj_inimigo2);
            }
        }
        inimigos_restantes -= num_inimigos;
    }
}
alarm[0] = 500;  // Reativar alarme com intervalo ajustado



/*
if (estado == "onda_inimigos") {
    if (inimigos_restantes > 0) {
        // Criar um subgrupo de inimigos
        for (var i = 0; i < subgrupo_tamanho; i++) {
            instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Inimigos", obj_inimigo1);
        }
        inimigos_restantes -= subgrupo_tamanho;
    } else {
        // Transição para obstáculos
        estado = "obstaculos";
        alarm[0] = 60;  // Intervalo para iniciar os obstáculos
    }
} else if (estado == "obstaculos") {
    if (obstaculos_restantes > 0) {
        // Criar um subgrupo de obstáculos
        for (var i = 0; i < subgrupo_tamanho / 2; i++) {
            var tipo_obstaculo = choose(obj_asteroide, obj_bola_fogo, obj_bola_gelo);
            instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Obstaculos", tipo_obstaculo);
        }
        obstaculos_restantes -= subgrupo_tamanho / 2;
    } else {
        // Transição para a segunda onda
        onda_atual = 2;
        inimigos_restantes = 200;
        estado = "onda_inimigos_forte";
        alarm[0] = 60;  // Intervalo para iniciar a segunda onda
    }
} else if (estado == "onda_inimigos_forte") {
    if (inimigos_restantes > 0) {
        // Criar um subgrupo de inimigos mais fortes
        for (var i = 0; i < subgrupo_tamanho; i++) {
            instance_create_layer(irandom_range(50, display_get_width() - 50), -50, "Inimigos", obj_inimigo2);
        }
        inimigos_restantes -= subgrupo_tamanho;
    }
}
alarm[0] = 60;  // Reativar alarme
*/