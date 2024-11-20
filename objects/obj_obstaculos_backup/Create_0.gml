// Definição de tipos de obstáculos no evento Create
switch (global.tipo_obstaculo) {
    case 1: // Cometa
        sprite_index = spr_cometa;
        velocidade = 4 + random(3);
        break;
    case 2: // Lixo Espacial
        sprite_index = spr_lixo_espacial;
        velocidade = 3 + random(2);
        break;
    case 3: // Asteroide
        sprite_index = spr_asteroide;
        velocidade = 2 + random(1);
        break;
}
