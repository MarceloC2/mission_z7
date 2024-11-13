/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!global.pausado) {
    if (wave_count == 0) {
        if (enemy_block_count < max_enemies_wave1) {
            if (instance_number(obj_enemy_weak) == 0) {
                for (var i = 0; i < enemies_per_block_wave1; i++) {
                    var enemy = instance_create_layer(random_range(0, room_width), -32, "Enemies", obj_enemy_weak);
                    // Ajustar velocidade do inimigo conforme a condição de jogo lento
                    enemy.speed = global.jogo_lento ? enemy.default_speed * 0.5 : enemy.default_speed;
                }
                enemy_block_count += enemies_per_block_wave1;
            }
        } else if (enemies_destroyed >= max_enemies_wave1) {
            wave_count = 1;
            enemy_block_count = 0;
            enemies_destroyed = 0;
        }
    }
    // Obstáculos entre as ondas
    if (instance_number(obj_enemy_weak) == 0 && wave_count == 1) {
        if (random(100) < 2) { // Probabilidade de criar obstáculo
            var obstacle_type = choose(obj_asteroid, obj_fireball, obj_iceball);
            var obstacle = instance_create_layer(random_range(0, room_width), -32, "Obstacles", obstacle_type);
            // Ajustar velocidade dos obstáculos conforme a condição de jogo lento
            obstacle.speed = global.jogo_lento ? obstacle.default_speed * 0.5 : obstacle.default_speed;
        }
    }
}

//SEGUNDA ONDA

if (!global.pausado) {
    if (wave_count == 1) {
        if (enemy_block_count < max_enemies_wave2) {
            if (instance_number(obj_enemy_medium) == 0) {
                for (var i = 0; i < enemies_per_block_wave2; i++) {
                    var enemy = instance_create_layer(random_range(0, room_width), -32, "Enemies", obj_enemy_medium);
                    // Ajustar velocidade do inimigo conforme a condição de jogo lento
                    enemy.speed = global.jogo_lento ? enemy.default_speed * 0.5 : enemy.default_speed;
                }
                enemy_block_count += enemies_per_block_wave2;
            }
        } else if (enemies_destroyed >= max_enemies_wave2) {
            wave_count = 2; // Pode ser expandido para próximas ondas
        }
        // Obstáculos entre as ondas
        if (instance_number(obj_enemy_medium) == 0 && wave_count == 2) {
            if (random(100) < 2) { // Probabilidade de criar obstáculo
                var obstacle_type = choose(obj_asteroid, obj_fireball, obj_iceball);
                var obstacle = instance_create_layer(random_range(0, room_width), -32, "Obstacles", obstacle_type);
                // Ajustar velocidade dos obstáculos conforme a condição de jogo lento
                obstacle.speed = global.jogo_lento ? obstacle.default_speed * 0.5 : obstacle.default_speed;
            }
        }
        // Bônus de poder de fogo após 10% dos inimigos destruídos
        if (enemies_destroyed >= (0.1 * max_enemies_wave2)) {
            instance_create_layer(random_range(0, room_width), random_range(0, room_height), "PowerUps", obj_powerup_firepower);
            enemies_destroyed = 0; // Reset após bônus ser criado
        }
    }
}



//SEGUNDA ONDA
