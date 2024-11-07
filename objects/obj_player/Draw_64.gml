// Definir a cor e o alinhamento do texto
draw_set_color(c_white);
draw_set_halign(fa_left);

// Desenhar a pontuação no canto superior esquerdo
draw_text(10, 10, "Pontuação: " + string(global.pontos));
draw_text(10, 30, "Vida: " + string(global.player_vida));
