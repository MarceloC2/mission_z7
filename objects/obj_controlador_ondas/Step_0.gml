/*
Controle de Criação: Adicionei uma variável margem para criar uma margem de segurança, garantindo que os inimigos sejam criados dentro da área visível.
Coordenadas Aleatórias: Usei random_range(margem, room_width - margem) para garantir que as coordenadas x dos inimigos fiquem dentro da largura da tela. 
Para a coordenada y, os inimigos são criados acima da tela e então descem, utilizando random_range(-50, -5).
*/

// Evento Step do controlador de ondas
if (!global.pausado) {
    var margem = 20; // Margem de segurança para garantir que os inimigos não apareçam nas bordas

    switch (global.onda) {
        case 1: // Primeira Onda
            if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 5) {
                global.nivel_inimigo = 1;
                var x_inimigo = random_range(margem, room_width - margem);
                var y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigos);
                global.inimigos_restantes--;
                global.inimigos_criados++; // Incrementar o total de inimigos criados
            }

            // Criar asteroides de forma aleatória
            if (random(1000) < 3) {
                global.tipo_obstaculo = 3;
                var x_obstaculo = random_range(margem, room_width - margem);
                var y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_obstaculo, y_obstaculo, "Instances", obj_obstaculos);
            }
            break;

        case 2: // Segunda Onda
            if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 5) {
                global.nivel_inimigo = 2;
                var x_inimigo = random_range(margem, room_width - margem);
                var y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigos);
                global.inimigos_restantes--;
                global.inimigos_criados++; // Incrementar o total de inimigos criados
            }

            // Criar lixo espacial de forma aleatória
            if (random(1000) < 3) {
                global.tipo_obstaculo = 2;
                var x_obstaculo = random_range(margem, room_width - margem);
                var y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_obstaculo, y_obstaculo, "Instances", obj_obstaculos);
            }

            // Aparecer power-up após destruir 3 inimigos
            if (global.inimigos_destruidos == 3) {
                var x_powerup = random_range(margem, room_width - margem);
                var y_powerup = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_powerup, y_powerup, "Instances", obj_powerup_firepower);
            }
            break;

        case 3: // Terceira Onda
            if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 2) {
                global.nivel_inimigo = 3;
                var x_inimigo = random_range(margem, room_width - margem);
                var y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigos);
                global.inimigos_restantes--;
                global.inimigos_criados++; // Incrementar o total de inimigos criados
            }

            // Criar cometas de forma aleatória
            if (random(1000) < 3) {
                global.tipo_obstaculo = 1;
                var x_obstaculo = random_range(margem, room_width - margem);
                var y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_obstaculo, y_obstaculo, "Instances", obj_obstaculos);
            }

            // Aparecer power-up após destruir 3 inimigos
            if (global.inimigos_destruidos == 3) {
                var x_powerup = random_range(margem, room_width - margem);
                var y_powerup = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_powerup, y_powerup, "Instances", obj_powerup_firepower);
            }
            break;
    }

    // Verificação se todos os inimigos da onda foram destruídos
    if (global.inimigos_restantes <= 0 && instance_number(obj_inimigos) == 0) {
        global.onda += 1; // Passa para a próxima onda
        
        // Definir o número de inimigos para cada onda
        if (global.onda == 2) {
            global.inimigos_restantes = 60; // Aumentar ou diminuar o número de inimigos na segunda onda
        } else if (global.onda == 3) {
            global.inimigos_restantes = 60; // Aumenta ou diminuir o número de inimigos na terceira onda
        } else {
            global.inimigos_restantes = 20 * global.onda; // Ajusta o número de inimigos para ondas subsequentes
        }
    }

    // Verificação para criar escudo após destruir metade dos inimigos
    if (!global.escudo_ativo && global.inimigos_restantes <= (global.inimigos_criados / 2) && instance_number(obj_escudo) == 0) {
        var x_escudo = random_range(margem, room_width - margem);
        var y_escudo = random_range(-50, -10); // Fora da parte superior da tela
        instance_create_layer(x_escudo, y_escudo, "Instances", obj_escudo);
    }

    // Verificação de vitória (sem inimigos e obstáculos restantes)
	
    if (global.inimigos_criados > 0 && global.inimigos_restantes <= 0 && instance_number(obj_inimigos) == 0 && instance_number(obj_obstaculos) == 0 || global.inimigos_criados == 20) {
        alarm[0] = 600;
    }
}




/*
if (!global.pausado) {
    var margem = 20; // Margem de segurança para garantir que os inimigos não apareçam nas bordas

    switch (global.onda) {
        case 1: // Primeira Onda
            if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 5) {
                global.nivel_inimigo = 1;
                var x_inimigo = random_range(margem, room_width - margem);
                var y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigos);
                global.inimigos_restantes--;
                global.inimigos_criados++; // Incrementar o total de inimigos criados
            }

            // Criar asteroides de forma aleatória
            if (random(1000) < 3) {
                global.tipo_obstaculo = 3;
                var x_obstaculo = random_range(margem, room_width - margem);
                var y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_obstaculo, y_obstaculo, "Instances", obj_obstaculos);
            }
            break;

        case 2: // Segunda Onda
            if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 5) {
                global.nivel_inimigo = 2;
                var x_inimigo = random_range(margem, room_width - margem);
                var y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigos);
                global.inimigos_restantes--;
                global.inimigos_criados++; // Incrementar o total de inimigos criados
            }

            // Criar lixo espacial de forma aleatória
            if (random(1000) < 3) {
                global.tipo_obstaculo = 2;
                var x_obstaculo = random_range(margem, room_width - margem);
                var y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_obstaculo, y_obstaculo, "Instances", obj_obstaculos);
            }

            // Aparecer power-up após destruir 3 inimigos
            if (global.inimigos_destruidos == 3) {
                var x_powerup = random_range(margem, room_width - margem);
                var y_powerup = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_powerup, y_powerup, "Instances", obj_powerup_firepower);
            }
            break;

        case 3: // Terceira Onda
            if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 2) {
                global.nivel_inimigo = 3;
                var x_inimigo = random_range(margem, room_width - margem);
                var y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigos);
                global.inimigos_restantes--;
                global.inimigos_criados++; // Incrementar o total de inimigos criados
            }

            // Criar cometas de forma aleatória
            if (random(1000) < 3) {
                global.tipo_obstaculo = 1;
                var x_obstaculo = random_range(margem, room_width - margem);
                var y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_obstaculo, y_obstaculo, "Instances", obj_obstaculos);
            }

            // Aparecer power-up após destruir 3 inimigos
            if (global.inimigos_destruidos == 3) {
                var x_powerup = random_range(margem, room_width - margem);
                var y_powerup = random_range(-50, -10); // Fora da parte superior da tela
                instance_create_layer(x_powerup, y_powerup, "Instances", obj_powerup_firepower);
            }
            break;
    }

    // Verificação se todos os inimigos da onda foram destruídos
    if (global.inimigos_restantes <= 0 && instance_number(obj_inimigos) == 0) {
        global.onda += 1; // Passa para a próxima onda
        global.inimigos_restantes = 20 * global.onda; // Ajusta o número de inimigos para a nova onda
    }

    // Verificação para criar escudo após destruir metade dos inimigos
    if (!global.escudo_ativo && global.inimigos_restantes <= (global.inimigos_criados / 2) && instance_number(obj_escudo) == 0) {
        var x_escudo = random_range(margem, room_width - margem);
        var y_escudo = random_range(-50, -10); // Fora da parte superior da tela
        instance_create_layer(x_escudo, y_escudo, "Instances", obj_escudo);
    }

    // Verificação de vitória (sem inimigos e obstáculos restantes)
    if (global.inimigos_criados == 120) { //global.inimigos_restantes <= 0 && instance_number(obj_inimigos) == 0 && instance_number(obj_obstaculos) == 0
        room_goto(rm_vitoria); // Vai para a sala de vitória
    }
}

*/



