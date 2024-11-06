/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (!global.pausado) {
    // Criar tiro
    var tiro = instance_create_layer(x, y + sprite_height / 2, layer, obj_inimigo_tiro);
    tiro.direction = 270;
    tiro.speed = 5;  // Velocidade do tiro
	instance_create_layer(x, y, layer, obj_inimigo2_rastro);
    // Reativar alarme
    alarm[0] = 60;  // Ajuste o tempo de intervalo conforme necessário
}





/*
if (global.pausado) {
    alarm[0] = 10;
    exit;
}

instance_create_layer(x, y, layer, obj_inimigo2_rastro);
alarm[0] = 10;
*/