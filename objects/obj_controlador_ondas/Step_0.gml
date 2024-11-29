/*
Controle de Criação: Adicionei uma variável _margem para criar uma margem de segurança, garantindo que os inimigos sejam criados dentro da área visível.
Coordenadas Aleatórias: Usei random_range(margem, room_width - margem) para garantir que as coordenadas x dos inimigos fiquem dentro da largura da tela. 
Para a coordenada y, os inimigos são criados acima da tela e então descem, utilizando random_range(-50, -5).
*/


if (!global.pausado) {
    var _margem = 20; // _margem de segurança para garantir que os inimigos não apareçam nas bordas

    switch (global.onda) {
    case 1: // Primeira Onda
        if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 5) {
            global.nivel_inimigo = 1;
            var _x_inimigo = random_range(_margem, room_width - _margem);
            var _y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
            instance_create_layer(_x_inimigo, _y_inimigo, "Instances", obj_inimigos);
            global.inimigos_restantes--;
            global.inimigos_criados++; // Incrementar o total de inimigos criados
        }

        // Criar asteroides de forma aleatória
        if (random(1000) < 3) {
            global.tipo_obstaculo = 3;
            var _x_obstaculo = random_range(_margem, room_width - _margem);
            var _y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
            instance_create_layer(_x_obstaculo, _y_obstaculo, "Instances", obj_obstaculos);
        }
        break;

    case 2: // Segunda Onda
        if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 5) {
            global.nivel_inimigo = 2;
            var _x_inimigo = random_range(_margem, room_width - _margem);
            var _y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
            instance_create_layer(_x_inimigo, _y_inimigo, "Instances", obj_inimigos);
            global.inimigos_restantes--;
            global.inimigos_criados++; // Incrementar o total de inimigos criados
        }

        // Criar lixo espacial de forma aleatória
        if (random(1000) < 3) {
            global.tipo_obstaculo = 2;
            var _x_obstaculo = random_range(_margem, room_width - _margem);
            var _y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
            instance_create_layer(_x_obstaculo, _y_obstaculo, "Instances", obj_obstaculos);
        }

        // Aparecer power-up após destruir 3 inimigos
        if (global.inimigos_destruidos == 3) {
            var _x_powerup = random_range(_margem, room_width - _margem);
            var _y_powerup = random_range(-50, -10); // Fora da parte superior da tela
            instance_create_layer(_x_powerup, _y_powerup, "Instances", obj_powerup_firepower);
        }
        break;

    case 3: // Terceira Onda
        if (global.inimigos_restantes > 0 && instance_number(obj_inimigos) < 2) {
            global.nivel_inimigo = 3;
            var _x_inimigo = random_range(_margem, room_width - _margem);
            var _y_inimigo = random_range(-50, -10); // Fora da parte superior da tela
            instance_create_layer(_x_inimigo, _y_inimigo, "Instances", obj_inimigos);
            global.inimigos_restantes--;
            global.inimigos_criados++; // Incrementar o total de inimigos criados
        }

        // Criar cometas de forma aleatória
        if (random(1000) < 3) {
            global.tipo_obstaculo = 1;
            var _x_obstaculo = random_range(_margem, room_width - _margem);
            var _y_obstaculo = random_range(-50, -10); // Fora da parte superior da tela
            instance_create_layer(_x_obstaculo, _y_obstaculo, "Instances", obj_obstaculos);
        }

        // Aparecer power-up após destruir 3 inimigos
        if (global.inimigos_destruidos == 3) {
            var _x_powerup = random_range(_margem, room_width - _margem);
            var _y_powerup = random_range(-50, -10); // Fora da parte superior da tela
            instance_create_layer(_x_powerup, _y_powerup, "Instances", obj_powerup_firepower);
        }
        break;
}


// Verificação se todos os inimigos da onda foram destruídos
if (global.inimigos_restantes <= 0 && instance_number(obj_inimigos) == 0) {
    global.onda += 1; // Passa para a próxima onda
    global.escudo_criado = false; // Resetar o estado de criação do escudo para a nova onda

    // Definir o número de inimigos para cada onda
    if (global.onda == 2) {
        global.inimigos_restantes = 80;
    } else if (global.onda == 3) {
        global.inimigos_restantes = 90;
    } else {
        global.inimigos_restantes = 20 * global.onda;
    }
}


// Verificação para criar escudo após destruir metade dos inimigos
if (!global.escudo_ativo && !global.escudo_criado && global.inimigos_restantes <= (global.inimigos_criados / 2) && instance_number(obj_escudo) == 0) {
    var _x_escudo = random_range(_margem, room_width - _margem);
    var _y_escudo = random_range(-50, -10); // Fora da parte superior da tela
    instance_create_layer(_x_escudo, _y_escudo, "Instances", obj_escudo);
    global.escudo_criado = true; // Marcar que o escudo foi criado
}

// Verificar vida e criar power-ups de vida
if (global.vida_player < 40 && !global.vida_40_coletada && instance_number(obj_vida) == 0) {
    instance_create_layer(random(room_width), -50, "Instances", obj_vida);
	global.vida_40_coletada = true; // Marcar que o power-up foi criado
}

if (global.vida_player < 80 && (global.onda == 2 || global.onda == 3) && !global.vida_80_coletada && instance_number(obj_vida) == 0) {
    instance_create_layer(random(room_width), -50, "Instances", obj_vida);
	global.vida_80_coletada = true; // Marcar que o power-up foi criado
}


    // Verificação de vitória (sem inimigos e obstáculos restantes)
	
    if (global.inimigos_criados > 0 && global.inimigos_restantes <= 0 && instance_number(obj_inimigos) == 0 && instance_number(obj_obstaculos) == 0 || global.inimigos_criados == 250) {
        // Desativar controle do jogador sobre a nave 
		with (obj_player) { nave_controlada = false; }
		//ativando escudo da nave
		global.escudo_ativo = true;
		alarm[0] = 60;
    }
}

