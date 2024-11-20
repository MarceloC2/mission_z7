// Evento Create do obj_inimigos
if (global.nivel_inimigo == 1) {
    resistencia = 1;
    velocidade = 3;
    atira = false;
    sprite_index = spr_inimigo1;
} else if (global.nivel_inimigo == 2) {
    resistencia = 2;
    velocidade = 2;
    atira = true;
    sprite_index = spr_inimigo2;
} else if (global.nivel_inimigo == 3) {
    resistencia = 3;
    velocidade = 1;
    atira = true;
    sprite_index = spr_inimigo3;
}
velocidade_original = velocidade;
tiro_intervalo = 60 + random(60); // Intervalo de 1 a 2 segundos entre tiros (60 FPS)
alarm[0] = tiro_intervalo;



/*
// Definição de níveis de inimigo no evento Create
switch (global.nivel_inimigo) {
    case 1: // Inimigo de nível fácil
        resistencia = 1;
        velocidade = 6;
        atira = false;
        sprite_index = spr_inimigo1;
        break;
    case 2: // Inimigo de nível médio
        resistencia = 2;
        velocidade = 4;
        atira = true;
        sprite_index = spr_inimigo2;
        break;
    case 3: // Inimigo de nível difícil
        resistencia = 3;
        velocidade = 2;
        atira = true;
        sprite_index = spr_inimigo3;
        break;
}
*/