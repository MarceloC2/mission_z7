// Evento Draw GUI do objeto obj_player

draw_set_color(c_white);
draw_set_halign(fa_left);

// Desenhar a pontuação no canto superior esquerdo
draw_text(10, 10, "Pontuação: " + string(global.pontos));
draw_text(10, 30, "Vida: " + string(global.vida_player * 100) + "%");

// Desenhar barra de vida com cantos arredondados
var vida_x = 10;
var vida_y = 50;
var vida_largura = 100;
var vida_altura = 15;

// Definir a transparência para a barra de fundo (preto)
draw_set_alpha(0.2); // Ajuste o valor da alfa conforme necessário
draw_roundrect_colour(vida_x, vida_y, vida_x + vida_largura, vida_y + vida_altura, c_black, c_black, false);

// Redefinir a transparência para 1 (opaco) para a barra de vida (vermelho)
draw_set_alpha(0.8);
draw_roundrect_colour(vida_x, vida_y, vida_x + vida_largura * global.vida_player, vida_y + vida_altura, c_red, c_red, false);

