/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    // Vá para o menu principal
    room_goto(rm_menu_principal);
}

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    global.pausado = false;
}
