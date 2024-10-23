// criar uma nova moeda em uma posição aleatória dentro da sala
instance_create_layer(random(room_width), random(room_height), "Instances", obj_moeda);

//  para criar outra moeda após 2 segundos
alarm[0] = room_speed * 1;