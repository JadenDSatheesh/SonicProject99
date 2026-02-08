/// @description Insert description here
// You can write your code in this editor


if place_meeting(x, y, obj_powerbox) && (ringLoss == false) 
{
	with other 
	{
		audio_play_sound(PoofExplode, 2, false, 1, 1.69);
        instance_create_layer(x, y, layer, obj_poof);
		instance_destroy();
		
	}
}