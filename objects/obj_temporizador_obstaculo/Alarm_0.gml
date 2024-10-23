var obstaculo_posicao;
var tentativa_maxima = 5;
var distancia_minima = 50;
var tentativas = 0;
var encontrado = false;

// loop para encontrar uma posição para o obstáculo
while (tentativas < tentativa_maxima) {
    // vetor de posição aleatória
    var obstaculo_x = irandom_range(0, room_width);
    var obstaculo_y = irandom_range(0, room_height);
    obstaculo_posicao = [obstaculo_x, obstaculo_y]; // Vetor de posição [x, y]

    // vetor do jogador
    var player_posicao = [obj_player.x, obj_player.y];

    // calcula a distância entre o vetor do obstáculo e o vetor do jogador
    var distancia = point_distance(obstaculo_posicao[0], obstaculo_posicao[1], player_posicao[0], player_posicao[1]);

    // verifica se a distância é segura em relação ao jogador
    if (distancia >= distancia_minima) {
        encontrado = true; // se a distância for segura, define como verdadeira
        break; // sai do loop se uma posição válida foi encontrada
    }

    tentativas += 1;
}

// verifica se uma posição foi encontrada
if (encontrado) {
    // gerar o obstáculo na nova posição
    instance_create_layer(obstaculo_posicao[0], obstaculo_posicao[1], "Instances", obj_move);
} 

// gerar outro obstaculo apos 4 segundos
alarm[0] = room_speed * 4;