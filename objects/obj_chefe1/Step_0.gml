// Evento Step no objeto chefe
if (x <= 0 || x >= room_width) {
    hspeed = -hspeed; // Inverter a direção do movimento
}

if (random(100) < 3) {
    instance_create_layer(x, y + 20, "Instances", obj_tiro_chefe);
}


