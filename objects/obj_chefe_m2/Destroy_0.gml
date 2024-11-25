
if (global.som) {
    obj_som.toggle_som(snd_explosao_chefe, "play");
}

//criando a explosao
instance_create_layer(x,y, "Efeitos", obj_explosao);