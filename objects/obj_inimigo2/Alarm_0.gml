/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!global.pausado) {
    // Criar tiro
    var _tiro = instance_create_layer(x, y + sprite_height / 2, layer, obj_inimigo_tiro);
    _tiro.direction = 270;
    _tiro.speed = 2;  // Velocidade do tiro
	instance_create_layer(x, y, layer, obj_inimigo2_rastro);
    // Reativar alarme
    alarm[0] = 90;  // Ajuste o tempo de intervalo conforme necessário
}





/*
if (global.pausado) {
    alarm[0] = 10;
    exit;
}

instance_create_layer(x, y, layer, obj_inimigo2_rastro);
alarm[0] = 10;
*/