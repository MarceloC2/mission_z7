/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
show_message_async("Dispositivo:\nAltura da Tela:" + string(display_get_width()) + " Largura da Tela: " + string(display_get_height()) );
show_message_async("Room:\nAltura da Tela:" + string(room_width) + " Largura da Tela: " + string(room_height) );

room_goto(rm_menu)