/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!global.pausado) {
    if (grupo_inimigos == 0 && subgrupo_inimigos < 10) {
        instance_create_layer(x, y, layer, obj_inimigo1);
        subgrupo_inimigos++;
    } else if (grupo_inimigos < 10) {
        subgrupo_inimigos = 0;
        grupo_inimigos++;
    } else {
        global.level += 0.2;  // Incrementa o nível
        grupo_inimigos = 0;
        subgrupo_inimigos = 0;
    }
}
alarm[0] = 30;




/* segundo codigo
if (!global.pausado) {
    if (global.jogo_lento) {
        alarm[0] = 60;  // Ajuste o tempo para desacelerar a criação de inimigos
    } else {
        instance_create_layer(x, y, layer, obj_inimigo1);
        alarm[0] = 30; // Tempo normal de criação de inimigos
    }
} else {
    alarm[0] = 30;  // Manter alarme ativo durante a pausa
}
*/


/* primeiro codigo
if (!global.pausado) {
    instance_create_layer(x, y, layer, obj_inimigo1);
}

// Reativando o alarme
alarm[0] = 30;
*/