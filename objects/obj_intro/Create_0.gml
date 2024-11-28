// Evento Create do obj_intro
frame_atual = -1; // Frame inicial da introdução

// Inicializa `global.pular` apenas se não estiver definida
if (!variable_global_exists("pular")) {
    global.pular = false;
}
