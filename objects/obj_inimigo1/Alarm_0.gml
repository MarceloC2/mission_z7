/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//alarme para controlar a geração de rastro
if (global.pausado) {
    alarm[0] = 10;
    exit;
}

instance_create_layer(x, y, layer, obj_inimigo1_rastro);
// Reativando alarme
alarm[0] = 10;
