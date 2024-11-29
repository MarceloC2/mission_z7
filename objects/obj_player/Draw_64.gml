draw_set_color(c_white);
draw_set_halign(fa_left);

// Desenhar a pontuação no canto superior esquerdo
draw_text(270, 30, string(global.pontos));

draw_sprite(spr_painel,0,0,0);

// Mostrar melhor pontuação durante o jogo draw_text(100, 2, "Melhor Pontuação: " + string(global.melhor_pontuacao));

// Desenhar barra de vida com cantos arredondados
var _vida_x = 75;
var _vida_y = 34;
var _vida_largura = 175;
var _vida_altura = 12;

// Definir a transparência para a barra de fundo (preto)
draw_set_alpha(0.2); // Ajuste o valor da alfa conforme necessário
draw_roundrect_colour(_vida_x, _vida_y, _vida_x + _vida_largura, _vida_y + _vida_altura, c_black, c_black, false);

// Redefinir a transparência para 1 (opaco) para a barra de vida (vermelho)
draw_set_alpha(0.8);
draw_roundrect_colour(_vida_x, _vida_y, _vida_x + _vida_largura * (global.vida_player / 100), _vida_y + _vida_altura, c_red, c_red, false);

var _col = #4D6A6D;
// Desenhar barra de escudo
if (global.escudo_ativo) {
    var _escudo_largura = 275 * (global.tempo_escudo / 1800); // Escudo dura 30 segundos (1800 ticks)
	//draw_roundrect_colour(_vida_x, _vida_y + 20, _vida_x + _escudo_largura, _vida_y + 20 + _vida_altura, _col, _col, false);
	draw_roundrect_colour(75, 80, 115 + _escudo_largura, 30 + 20 + 15, c_white, c_white, false);
    //draw_roundrect(_vida_x, vida_y + 20, _vida_x + _escudo_largura, _vida_y + 20 + _vida_altura,  false);
}


// Informações adicionais: Total de inimigos destruídos e criados - TESTES
/*
draw_text(10, 80, "Inimigos Destruídos: " + string(global.inimigos_destruidos));
draw_text(10, 100, "Inimigos Criados: " + string(global.inimigos_criados));

// Exemplos de objetos no jogo (isso deve ser ajustado para mostrar os objetos que você deseja)
draw_text(10, 120, "Objetos no Jogo:");
draw_text(30, 140, "- Inimigos: " + string(instance_number(obj_inimigos)));
draw_text(30, 160, "- Obstáculos: " + string(instance_number(obj_obstaculos)));
draw_text(30, 180, "- Power-ups: " + string(instance_number(obj_vida) + instance_number(obj_powerup_firepower) + instance_number(obj_escudo)));

*/

