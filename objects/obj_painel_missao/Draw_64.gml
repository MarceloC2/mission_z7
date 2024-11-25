// Evento Draw no obj_painel_missao
var vida_maxima = 10; // Vida máxima do jogador
var largura_barra = 168; // Largura da barra de vida
var altura_barra = 10; // Altura da barra de vida
var x_barra = 84; // Posição X da barra de vida
var y_barra = 40; // Posição Y da barra de vida

if (instance_exists(obj_player_mission)) {
    var largura_preenchida = largura_barra * (obj_player_mission.hp / vida_maxima);

    // Desenha a borda da barra de vida com cantos arredondados
    draw_set_color(c_black);
    draw_roundrect(x_barra - 2, y_barra - 2, x_barra + largura_barra, y_barra + altura_barra + 2, false);

    // Desenha a barra de vida preenchida com gradiente de cores e cantos arredondados
    draw_roundrect_colour(x_barra, y_barra, x_barra + largura_preenchida, y_barra + altura_barra, c_red, c_red, false);

    // Desenha o texto da vida
    draw_set_color(c_white);
    draw_text(x_barra + largura_barra + 10, y_barra, "Vida: " + string(obj_player_mission.hp));
} else {
    draw_text(200,500,"Aguarde...");
}

// Desenha os pontos do jogador
draw_set_color(c_white);
draw_text(x_barra, y_barra + altura_barra + 10, "Pontos: " + string(global.pontuacao));
