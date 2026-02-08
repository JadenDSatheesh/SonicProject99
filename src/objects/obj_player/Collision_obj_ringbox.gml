/// @description Insert description here
// You can write your code in this editor


if place_meeting(x, y, obj_ringbox) && (ringLoss == false) 
{
	with other 
	{
		instance_create_layer(x, y, layer, obj_poof);
		audio_play_sound(PoofExplode, 2, false, 1, 1.69);
		obj_player.ringCount += 10;
		obj_ringCount.totalRing += 10;
		instance_destroy();
		
	}
}