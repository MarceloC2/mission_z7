// TITULO VITORIA
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_titulos);
draw_text(210, 90, string("PARABÉNS"));
// Redefinir para a fonte padrão 
draw_set_font(-1); // -1 define a fonte padrão

draw_sprite(spr_estatistica,0,224,535);
// Desenhar as estatísticas
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_font(fnt_estatisticas);
draw_text(232, 340, string(global.nivel_inimigo));
draw_text(126, 435, string(global.inimigos_destruidos));
draw_text(240, 435, string(global.pontos));
draw_text(345, 435, string(global.obstaculos_destruidos));

// Desenhar a melhor pontuação 
draw_set_color(c_yellow); 
draw_set_halign(fa_center);
//MELHOR PONTUAÇÃO
draw_text(200, 200, "Melhor Pontuação: " + string(global.melhor_pontuacao));

// QUESTIONAMENTO VITORIA
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_font(fnt_sub_titulo);

draw_text(215, 600, string("Jogar Novamente?"));
// Redefinir para a fonte padrão 
draw_set_font(-1);
function desenhar_menu() {
    for (var _i = 0; _i < array_length(menu_resposta); _i++) {
        if (menu_resposta[_i].visivel) {
            var _index = (_i == atual) ? 1 : 0; // Muda para o índice 1 se estiver selecionado
            draw_sprite(menu_resposta[_i].sprite, _index, menu_resposta[_i].pos_x, menu_resposta[_i].pos_y);
        }
    }
}

desenhar_menu();
