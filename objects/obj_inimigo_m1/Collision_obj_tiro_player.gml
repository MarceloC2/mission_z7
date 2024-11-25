// Evento Collision no obj_inimigo_m1 com obj_tiro_player
hp -= other.dano; // Reduz a vida do inimigo pelo dano do tiro
if (hp <= 0) {
    instance_destroy(); // Destroi o inimigo se a vida chegar a zero
}
