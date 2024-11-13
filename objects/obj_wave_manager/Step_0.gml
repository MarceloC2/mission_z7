/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Evento Step do objeto obj_wave_manage

if (!global.pausado) {
    // PRIMEIRA ONDA
    if (wave_count == 0) {
        if (enemy_block_count < max_enemies_wave1) {
            if (instance_number(obj_enemy_weak) == 0) {
                for (var i = 0; i < enemies_per_block_wave1; i++) {
                    var enemy = instance_create_layer(random_range(0, room_width), -32, "Enemies", obj_enemy_weak);
                    enemy.speed = global.jogo_lento && global.funcao_jogo_lento ? enemy.default_speed * 0.5 : enemy.default_speed;
                }
                enemy_block_count += enemies_per_block_wave1;
            }
        } else if (enemies_destroyed >= max_enemies_wave1) {
            wave_count = 1;
            enemy_block_count = 0;
            enemies_destroyed = 0;
            // Criar bônus de poder de fogo no início da segunda onda
            instance_create_layer(random_range(0, room_width), random_range(0, room_height), "PowerUps", obj_powerup_firepower);
        }
    }
    
    // Obstáculos entre as ondas da PRIMEIRA ONDA
    if (instance_number(obj_enemy_weak) == 0 && wave_count == 1) {
        if (random(100) < 2) {
            var obstacle_type = choose(obj_asteroid, obj_fireball, obj_iceball);
            var obstacle = instance_create_layer(random_range(0, room_width), -32, "Obstacles", obstacle_type);
            obstacle.speed = global.jogo_lento && global.funcao_jogo_lento ? obstacle.default_speed * 0.5 : obstacle.default_speed;
        }
    }

    // SEGUNDA ONDA
    if (wave_count == 1) {
        if (enemy_block_count < max_enemies_wave2) {
            if (instance_number(obj_enemy_medium) == 0) {
                for (var i = 0; i < enemies_per_block_wave2; i++) {
                    var enemy = instance_create_layer(random_range(0, room_width), -32, "Enemies", obj_enemy_medium);
                    enemy.speed = global.jogo_lento && global.funcao_jogo_lento ? enemy.default_speed * 0.5 : enemy.default_speed;
                }
                enemy_block_count += enemies_per_block_wave2;
            }
        } else if (enemies_destroyed >= max_enemies_wave2) {
           // wave_count = 2; // Pode ser expandido para próximas ondas
		   show_message("Você Eliminou todos os inimigos, em breve continuaresmo o jogo!");
        }
        
        // Obstáculos entre as ondas da SEGUNDA ONDA
        if (instance_number(obj_enemy_medium) == 0 && wave_count == 2) {
            if (random(100) < 2) {
                var obstacle_type = choose(obj_asteroid, obj_fireball, obj_iceball);
                var obstacle = instance_create_layer(random_range(0, room_width), -32, "Obstacles", obstacle_type);
                obstacle.speed = global.jogo_lento && global.funcao_jogo_lento ? obstacle.default_speed * 0.5 : obstacle.default_speed;
            }
        }
    }
}
