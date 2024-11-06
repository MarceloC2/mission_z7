/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
image_alpha = image_alpha - 0.15;

//codigo para limpar restros - não ocupar muita memoria

if (image_alpha < 0){
	instance_destroy();

}