
global.escudo_ativo = true;
obj_player.image_index = 1;
alarm[1] = 900; // 15 segundos de escudo (60 FPS)
global.tempo_escudo = 900;
instance_destroy(other);  // Destruir o objeto escudo



    
  