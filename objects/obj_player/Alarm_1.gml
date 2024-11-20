// Evento Alarm[1] do obj_player
if (global.escudo_ativo) {
    global.escudo_ativo = false;
    obj_player.image_index = 0; // Voltar para o frame normal
}else{
	obj_player.image_index = 1;
}


