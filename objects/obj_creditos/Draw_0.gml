// Desenhar o sprite credito
draw_sprite(spr_creditos_titulo, 0, room_width/2 - (sprite_width/2), 100);
draw_sprite(spr_credito_lista, 0, room_width/2 - (sprite_width/2), room_height/2);

/*
// créditos
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_estatisticas);
draw_text(200, 200, string("Equipe Desenvolvedora:"));
draw_text(200, 240, string("Danyllo Caldas"));
draw_text(200, 280, string("Marcelo Carvalho"));
draw_text(200, 320, string("Marcos Antonio"));
draw_text(200, 360, string("Marcos Antonio"));
draw_text(200, 400, string("Tatiana Rodrigues"));

draw_text(200, 460, string("Fontes Visuais"));
draw_text(200, 480, string("Copilot Microsoft"));
draw_text(200, 500, string("Site: pinterest.com/"));
//https://br.pinterest.com/dragonfly811/
draw_text(200, 520, string("Usuário: dragonfly 811"));
draw_text(200, 540, string("site: pixabay.com/"));
// Redefinir para a fonte padrão 
draw_set_font(-1);

*/


instance_create_layer(95 ,room_height - 150,"Instances",obj_voltar);