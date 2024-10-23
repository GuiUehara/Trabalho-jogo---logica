if (!variable_global_exists("jogo_iniciado")) {
    global.jogo_iniciado = false;
}

var velocidade = 1.5;

// Função para mover o jogador
function mover_jogador(velocidade) {
    var direcoes = [
        [vk_up, [0, -velocidade]],    // cima
        [vk_down, [0, velocidade]],   // baixo
        [vk_left, [-velocidade, 0]],  // esquerda
        [vk_right, [velocidade, 0]]   // direita
    ];

    for (var i = 0; i < array_length_1d(direcoes); i++) {
        var tecla = direcoes[i][0];         // tecla a ser verificada
        var movimento = direcoes[i][1];      // vetor de movimento
        var mov_x = movimento[0];            // o quanto mover no eixo X
        var mov_y = movimento[1];            // o quanto mover no eixo Y

        // verifica se a tecla está sendo pressionada
        if (keyboard_check(tecla)) {
            // inicia o jogo ao se mover
            if (!global.jogo_iniciado) {
                global.jogo_iniciado = true;
            }

            // verifica se ha colisão
            if (!place_meeting(x + mov_x, y + mov_y, obj_parede)) {
                x += mov_x;
                y += mov_y;
            }

            // inverte a imagem do player
            if (tecla == vk_left) {
                image_xscale = 1;
            } else if (tecla == vk_right) {
                image_xscale = -1;
            }
        }
    }
}

mover_jogador(velocidade);

// correr e parado
if (keyboard_check(vk_anykey)) {
    sprite_index = player_correndo;
} else {
    sprite_index = player;
}