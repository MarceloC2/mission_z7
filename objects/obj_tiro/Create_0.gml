/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
speed = 10;
direction = 90;

// Variáveis para salvar a velocidade e direção
saved_speed = speed;
saved_direction = direction;


/*
if (global.som){
	obj_som.toggle_som(snd_tiro_laser,"play");
	}
*/

// Evento Create do obj_tiro

if (instance_exists(obj_som)) {
    with (obj_som) {
        reproduzir("tiro_player");
    }
}

