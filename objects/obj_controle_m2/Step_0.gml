// Evento Step no controlador da Missão 2 (obj_controle_m2)
if (todas_naves_criadas && instance_number(obj_inimigo_m2) == 0 && !instance_exists(obj_chefe_m2) && !global.chefe_derrotado_m2) {
    // Todos os inimigos foram destruídos e o chefe ainda não foi criado
    instance_create_layer(room_width / 2, 50, "Instances", obj_chefe_m2);
}


