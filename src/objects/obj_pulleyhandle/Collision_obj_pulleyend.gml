if activate
{
	obj_player.ground = false;
    obj_player.action = 3
    obj_player.vsp = -8
    vspeed = 0;
    if audio_is_playing(RingSound)
        audio_stop_sound(RingSound)
}

