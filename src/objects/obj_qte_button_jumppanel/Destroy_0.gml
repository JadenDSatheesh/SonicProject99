if done
{
    if obj_player.jumppanel < 5
    {
		
		obj_player.jumppanel += 1   
        obj_player.action = 24
        obj_player.grv = 0.21875;
        if instance_exists(obj_qte_success)
        {
            with(obj_qte_success)
            {
                instance_destroy();
            }   
        }
        message = instance_create_depth(x, y, -200, obj_qte_success)
        if timevalue > 0
            message.image_index = 2
        if timevalue > 33
            message.image_index = 1
        if timevalue > 66
            message.image_index = 0
    }
    audio_play_sound(RingSound,1,false)
    //if obj_player.jumppanel == 5
        //audio_play_sound(snd_SonicQTE,1,false)
}
else
{
    obj_player.jumppanel = 1
    audio_play_sound(RingSound,1,false)
    obj_player.action = 0
    obj_player.image_angle = obj_jumppanel_end.image_angle
    obj_player.grav = 0.275;
	image_speed = .2
    instance_create_depth(x, y-10, -200, obj_qte_fail)
	obj_player.QTELocked = false;
	obj_player.sprite_index = spr_sonic_stand;
}

