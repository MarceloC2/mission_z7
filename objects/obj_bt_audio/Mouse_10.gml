/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_alpha = 1;

// Verifica se a música está tocando e ajusta o image_index
if (obj_som.verificar_status_audio()) {
    image_index = 1;
} else {
    image_index = 0;
}


