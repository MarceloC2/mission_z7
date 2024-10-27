/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//image_index = 0;
image_alpha = 0.6;


// Verifica se a música está tocando e ajusta o image_index
if (obj_som.verificar_status_audio()) {
    image_index = 1;
} else {
    image_index = 0;
}
