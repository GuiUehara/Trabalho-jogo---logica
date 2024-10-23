// Definir a fonte e cor dos créditos
draw_set_font(fnt_creditos); // Defina a fonte que você criou

// Alinhar o texto ao centro
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// creditos + alinhar texto
var espaco = 100;

for (var i = 0; i < array_length_1d(creditos); i++) {
    var texto = creditos[i];

    var texto_x = display_get_gui_width() / 2;

    draw_text(texto_x, (100) + i * espaco, texto);
}

// cor da mensagem
draw_set_color(c_yellow);

// mensagem para voltar ao menu
var mensagem = "Aperte qualquer tecla para voltar ao menu";
draw_text(texto_x, display_get_gui_height() - 50, mensagem); // Ajustar a posição vertical da mensagem

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// voltar ao menu apos pressionar qualquer tecla
if (keyboard_check_pressed(vk_anykey)) { 
    room_goto(rm_menu);
}

// mudar para cor padrao novamente
draw_set_color(c_white);