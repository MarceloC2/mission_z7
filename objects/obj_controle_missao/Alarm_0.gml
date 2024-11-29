// Evento Alarm 0 no controlador da Missão 1 (obj_controle_m1)
show_debug_message("Criando naves da onda: " + string(self.onda_atual));
if (linha_atual < 4) {
    var x_inimigo = margem_lateral + coluna_atual * espaco_horizontal;
    var y_inimigo = deslocamento_vertical + linha_atual * espaco_vertical;
    var inimigo = undefined; // Inicializa a variável inimigo

    // Lógica para diferentes ondas
    switch (self.onda_atual) {
        case 1:
            inimigo = instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigo_m1_parado);
            break;
        case 2:
            inimigo = instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigo_m1_atirador);
            break;
        case 3:
            inimigo = instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigo_m1_ziguezague);
            break;
        case 4:
            inimigo = instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigo_m1_circular);
            break;
        case 5:
            inimigo = instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigo_m1_fantasma);
            break;
        default:
            show_debug_message("Erro: Onda inválida " + string(self.onda_atual));
            break;
    }

    if (inimigo != undefined) {
        inimigo.target_x = x_inimigo;
        inimigo.target_y = y_inimigo;
        //show_debug_message("Inimigo criado em: (" + string(inimigo.target_x) + ", " + string(inimigo.target_y) + ")");
    } 
    
    // Incrementar a coluna atual, e passar para a próxima linha se necessário
    coluna_atual += 1;
    if (coluna_atual >= 5) {
        coluna_atual = 0;
        linha_atual += 1;
    }
    
    // Definir o alarme para criar a próxima nave
    alarm[0] = 5; // Ajuste o tempo conforme necessário
} else {
    // Todas as naves foram criadas
    self.todas_naves_criadas = true;
    // Inicializa a nave do jogador
    instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_player_mission);
	if (global.som) {
		obj_som.toggle_som(snd_start, "play");
    }
}
