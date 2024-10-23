lives -= 1;

if (lives < 0) {
    audio_play_sound(som_perder, 1, false);
    global.final_score = score;
    score = 0;
    room_goto(rm_gameover);
}