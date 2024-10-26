/// @description Navegação do Menu
// Mudando de opção
if (keyboard_check_pressed(vk_down)) {
    atual = (atual + 1) % array_length(menu);
    if (global.som) {
        audio_play_sound(snd_select_menu, 1, false);
    }
}

if (keyboard_check_pressed(vk_up)) {
    atual = (atual - 1 + array_length(menu)) % array_length(menu);
    if (global.som) {
        audio_play_sound(snd_select_menu, 1, false);
    }
}

// Se usuário apertar enter, executa função
if (keyboard_check_pressed(vk_enter)) {
    if (global.som) {
        audio_play_sound(snd_select_menu, 1, false);
    }
    menu[atual].funcao();
}