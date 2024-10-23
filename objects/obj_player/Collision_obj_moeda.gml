/// colisao com moeda

moeda += 1;

// destruir a moeda com a qual o jogador tocou
instance_destroy(other);
audio_play_sound(som_moeda, 1, false);

// criar uma nova moeda após 1 segundos
alarm[0] = room_speed * 1;