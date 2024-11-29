// Evento Draw no obj_checkbox

// Desenha a checkbox
draw_rectangle(checkbox_x, checkbox_y, checkbox_x + checkbox_tamanho, checkbox_y + checkbox_tamanho, true);
if (checkbox_marcada) {
    draw_line(checkbox_x, checkbox_y, checkbox_x + checkbox_tamanho, checkbox_y + checkbox_tamanho); // Desenha um X
    draw_line(checkbox_x + checkbox_tamanho, checkbox_y, checkbox_x, checkbox_y + checkbox_tamanho);
}

// Desenha o texto ao lado da checkbox
draw_set_color(c_white);
draw_set_font(fnt_texto_apresentacao);
draw_text(checkbox_x + checkbox_tamanho + 10, checkbox_y, "Não mostrar novamente");
// Redefinir para a fonte padrão 
draw_set_font(-1);



