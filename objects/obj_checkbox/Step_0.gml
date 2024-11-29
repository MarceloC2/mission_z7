// Evento Step no obj_checkbox
if (device_mouse_check_button_pressed(0, mb_left)) {
    var _touch_x = device_mouse_x(0);
    var _touch_y = device_mouse_y(0);

    if (_touch_x > checkbox_x && _touch_x < checkbox_x + checkbox_tamanho &&
        _touch_y > checkbox_y && _touch_y < checkbox_y + checkbox_tamanho) {
        checkbox_marcada = !checkbox_marcada; // Inverte o estado da checkbox

        if (checkbox_marcada) {
            global.pular = true; // Atualiza a variável global pular
        }
    }
}
