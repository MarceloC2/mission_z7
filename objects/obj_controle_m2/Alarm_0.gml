// Evento Alarm 0 no controlador da Missão 1 (obj_controle_m1)
if (linha_atual < 4) {
    var x_inimigo = -60; // Posiciona fora da tela para começar
    var y_inimigo = margem + linha_atual * espaco_vertical;
    var inimigo = instance_create_layer(x_inimigo, y_inimigo, "Instances", obj_inimigo_m2);
    inimigo.target_x = margem + coluna_atual * espaco_horizontal;
    inimigo.target_y = y_inimigo;
    
    // Incrementar a coluna atual, e passar para a próxima linha se necessário
    coluna_atual += 1;
    if (coluna_atual >= 5) {
        coluna_atual = 0;
        linha_atual += 1;
    }
    
    // Definir o alarme para criar a próxima nave
    alarm[0] = 10; // Ajuste o tempo conforme necessário
} else {
    // Todas as naves foram criadas
    self.todas_naves_criadas = true;
    // Inicializa a nave do jogador
    instance_create_layer(room_width / 2, room_height - 50, "Instances", obj_player_mission);
}
