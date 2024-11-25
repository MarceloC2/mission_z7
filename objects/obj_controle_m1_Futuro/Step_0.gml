// Evento Step no controlador da Missão 1 (obj_controle_m1)
if (todas_naves_criadas && instance_number(obj_inimigo_m1) == 0 && !instance_exists(obj_chefe_m1) && !global.chefe_derrotado) {
    // Todos os inimigos foram destruídos e o chefe ainda não foi criado
    instance_create_layer(room_width / 2, 50, "Instances", obj_chefe_m1);
}
