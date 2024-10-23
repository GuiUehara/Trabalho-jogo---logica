if (global.jogo_iniciado) {
    // movimento do obstaculo
    x += hsp;

    if (x < 0 || x > room_width) {
        hsp = -hsp;
    }

    y += vsp;
    if (y < 0 || y > room_height) {
        vsp = -vsp;
    }
}