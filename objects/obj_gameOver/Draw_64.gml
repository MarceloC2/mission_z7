// Evento Draw GUI do obj_gameOver

// Desenhar as estatísticas
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_font(fnt_estatisticas);
draw_text(400, 700, "Estatísticas do Jogo");
draw_text(400, 740, "Pontuação: " + string(global.pontos));
draw_text(400, 780, "Inimigos Destruídos: " + string(global.inimigos_destruidos));
draw_text(400, 820, "Obstáculos Destruídos: " + string(global.obstaculos_destruidos));
draw_text(400, 860, "Nível: " + string(global.nivel_inimigo));

function desenhar_menu() {
    for (var _i = 0; _i < array_length(menu_resposta); _i++) {
        if (menu_resposta[_i].visivel) {
            var _index = (_i == atual) ? 1 : 0; // Muda para o índice 1 se estiver selecionado
            draw_sprite(menu_resposta[_i].sprite, _index, menu_resposta[_i].pos_x, menu_resposta[_i].pos_y);
        }
    }
}

desenhar_menu();
