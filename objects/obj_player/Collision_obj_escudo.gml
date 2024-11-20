
global.escudo_ativo = true;
obj_player.image_index = 1;
alarm[1] = 1800; // 30 segundos de escudo (60 FPS)
global.tempo_escudo = 1800;
instance_destroy(other);  // Destruir o objeto escudo



    
  