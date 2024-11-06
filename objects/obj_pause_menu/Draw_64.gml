/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (global.pausado) {
    // Desenhar fundo semi-transparente
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    
    // Restaurar a opacidade
    draw_set_alpha(1);
    
    // Desenhar texto de pausa
    draw_set_color(c_red);
    draw_text(display_get_width() / 2 - 50, display_get_height() / 4, "Pausado");

    // Desenhar barras de som e música
    draw_sprite(spr_barra_som, 0, display_get_width() / 2 - 75, display_get_height() / 2 - 20);
    draw_sprite(spr_barra_musica, 0, display_get_width() / 2 - 75, display_get_height() / 2 + 20);

    // Desenhar botões de continuar e menu principal
    draw_sprite(spr_btn_continuar, 0, display_get_width() / 2 - 50, display_get_height() / 2 + 60);
    draw_sprite(spr_btn_menu_principal, 0, display_get_width() / 2 - 50, display_get_height() / 2 + 100);
}
