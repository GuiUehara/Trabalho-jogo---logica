event_inherited();

room_goto(rm_creditos);

if (instance_exists(obj_controls)) 
{
    instance_destroy();
}

else
{
    instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls);
}

audio_play_sound(som_click, 1, false);