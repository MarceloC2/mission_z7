// Evento Create no objeto de controle da sala `rm_mapa_missao`
if (!variable_global_exists("global.missao_1_completa")) {
    global.missao_1_completa = false;
}
if (!variable_global_exists("global.missao_2_completa")) {
    global.missao_2_completa = false;
}
if (!variable_global_exists("global.missao_3_completa")) {
    global.missao_3_completa = false;
}
if (!variable_global_exists("global.missao_4_completa")) {
    global.missao_4_completa = false;
}
global.pontuacao = 0; // Inicializa a pontuação do jogador
missao_completa = false;
global.missao_atual = 1;
//global.pontuacao = global.pontuacao || 0; // Inicializa a pontuação se não estiver definida

instance_create_layer(96, 768, "Instances", obj_voltar);

function atualizar_missoes() {
    // Exibir missões disponíveis
    if (!global.missao_1_completa) {
        var missao1 = instance_create_layer(50, 100, "Instances", obj_missao1);
        missao1.image_index = 0; // Disponível
    } else {
        var missao1 = instance_create_layer(50, 100, "Instances", obj_missao1);
        missao1.image_index = 1; // Completa
    }

    if (global.missao_1_completa && !global.missao_2_completa) {
        var missao2 = instance_create_layer(250, 100, "Instances", obj_missao2);
        missao2.image_index = 0; // Disponível
    } else {
        var missao2 = instance_create_layer(250, 100, "Instances", obj_missao2);
        missao2.image_index = 1; // Indisponível
    }

    if (global.missao_2_completa && !global.missao_3_completa) {
        var missao3 = instance_create_layer(50, 300, "Instances", obj_missao3);
        missao3.image_index = 0; // Disponível
    } else {
        var missao3 = instance_create_layer(50, 300, "Instances", obj_missao3);
        missao3.image_index = 1; // Indisponível
    }

    if (global.missao_3_completa && !global.missao_4_completa) {
        var missao4 = instance_create_layer(250, 300, "Instances", obj_missao4);
        missao4.image_index = 0; // Disponível
    } else {
        var missao4 = instance_create_layer(250, 300, "Instances", obj_missao4);
        missao4.image_index = 1; // Indisponível
    }
}

// Chamar a função ao criar a sala
atualizar_missoes();
