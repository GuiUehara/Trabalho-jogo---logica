draw_set_font(fnt_pontuacao_final);
draw_set_color(c_white);

// Mostrar a pontuação final
draw_text(x, y, "Pontuacao Final: " + string(global.final_score));