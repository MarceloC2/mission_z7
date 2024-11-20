// Evento Draw GUI do obj_player

draw_set_color(c_white);
draw_set_halign(fa_left);

// Desenhar a pontuação no canto superior esquerdo
draw_text(10, 10, "Pontuação: " + string(global.pontos));
draw_text(10, 30, "Vida: " + string(global.vida_player) + "%");
draw_text(10, 60, "Escudo: ");

// Desenhar barra de vida com cantos arredondados
var vida_x = 115;
var vida_y = 30;
var vida_largura = 280;
var vida_altura = 15;

// Definir a transparência para a barra de fundo (preto)
draw_set_alpha(0.2); // Ajuste o valor da alfa conforme necessário
draw_roundrect_colour(vida_x, vida_y, vida_x + vida_largura, vida_y + vida_altura, c_black, c_black, false);

// Redefinir a transparência para 1 (opaco) para a barra de vida (vermelho)
draw_set_alpha(0.8);
draw_roundrect_colour(vida_x, vida_y, vida_x + vida_largura * (global.vida_player / 100), vida_y + vida_altura, c_maroon, c_red, false);

col = #4D6A6D;
// Desenhar barra de escudo
if (global.escudo_ativo) {
    var escudo_largura = 200 * (global.tempo_escudo / 1800); // Escudo dura 30 segundos (1800 ticks)
	//draw_roundrect_colour(vida_x, vida_y + 20, vida_x + escudo_largura, vida_y + 20 + vida_altura, c_white, col, false);
	draw_roundrect_colour(115, 30 + 20, 115 + escudo_largura, 30 + 20 + 15, c_white, c_white, false);
    //draw_roundrect(vida_x, vida_y + 20, vida_x + escudo_largura, vida_y + 20 + vida_altura, false);
}


// Informações adicionais: Total de inimigos destruídos e criados

draw_text(10, 80, "Inimigos Destruídos: " + string(global.inimigos_destruidos));
draw_text(10, 100, "Inimigos Criados: " + string(global.inimigos_criados));

// Exemplos de objetos no jogo (isso deve ser ajustado para mostrar os objetos que você deseja)
draw_text(10, 120, "Objetos no Jogo:");
draw_text(30, 140, "- Inimigos: " + string(instance_number(obj_inimigos)));
draw_text(30, 160, "- Obstáculos: " + string(instance_number(obj_obstaculos)));
draw_text(30, 180, "- Power-ups: " + string(instance_number(obj_vida) + instance_number(obj_powerup_firepower) + instance_number(obj_escudo)));



