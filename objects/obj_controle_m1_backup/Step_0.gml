// Evento Step no controlador da Missão 1 (obj_controle_m1)
if (self.todas_naves_criadas && 
    instance_number(obj_inimigo_m1_parado) == 0 && 
    instance_number(obj_inimigo_m2_atirador) == 0 && 
    instance_number(obj_inimigo_m3_ziguezague) == 0 && 
    instance_number(obj_inimigo_m4_circular) == 0 && 
    instance_number(obj_inimigo_m5_fantasma) == 0 && 
    !instance_exists(obj_chefe_m1) && !global.chefe_derrotado) {
    
    // Se todas as naves da onda atual foram destruídas, crie a próxima onda
    if (self.onda_atual < self.total_ondas) {
        self.onda_atual += 1; // Avança para a próxima onda
        self.linha_atual = 0;
        self.coluna_atual = 0;
        self.todas_naves_criadas = false; // Reinicia o processo de criação de naves
        alarm[0] = 5; // Reinicia o alarme para criar a próxima onda
    } else {
        // Todas as ondas foram destruídas, crie o chefe
        instance_create_layer(room_width / 2, 50, "Instances", obj_chefe_m1);
    }
}
