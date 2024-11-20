
/*
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
velocidade_original = velocidade; // Armazenando a velocidade original para uso na tela lenta
*/


if (global.tipo_obstaculo == 1) {
    sprite_index = spr_cometa;
    velocidade = 2 + random(3);
    resistencia = 3; // Definindo resistência para cometa
} else if (global.tipo_obstaculo == 2) {
    sprite_index = spr_lixo_espacial;
    velocidade = 1.5 + random(2);
    resistencia = 2; // Definindo resistência para lixo espacial
} else if (global.tipo_obstaculo == 3) {
    sprite_index = spr_asteroide;
    velocidade = 1 + random(1);
    resistencia = 1; // Definindo resistência para asteroide
}
velocidade_original = velocidade; // Armazenando a velocidade original para uso na tela lenta
