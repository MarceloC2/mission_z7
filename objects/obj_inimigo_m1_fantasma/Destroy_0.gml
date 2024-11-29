//criando a explosao
if (!global.pausado) {
	instance_create_layer(x,y, "Efeitos", obj_explosao);

	//criando particula
	repeticao = random_range(20,50);

	repeat(repeticao){
		instance_create_layer(x,y,"Efeitos",obj_particula);
	}
}