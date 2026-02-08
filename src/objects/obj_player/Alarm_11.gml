/// @description Insert description here
// You can write your code in this editor

//show_message("hm")

	
ringLoss = false;

	if swapCount == 1
	{
		image_speed = 0;
		sprite_index = spr_manic_dead;
		if vsp < 0
			image_index = 0;
		else
			image_index = 1;
	}
	else
		sprite_index = spr_sonic_dead;

PlatformTransition(TRANS_TYPE.SLIDE, room);