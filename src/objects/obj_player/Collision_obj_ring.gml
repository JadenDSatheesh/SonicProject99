/// @description Insert description here
// You can write your code in this editor


if place_meeting(x, y, obj_ring) && (ringLoss == false) 
{
	
	instance_create_depth(x, y, 100, obj_ring_sparkle);
	obj_ring_sparkle.image_xscale = obj_player.image_xscale;
	
	with other 
	{
		instance_destroy();
		audio_play_sound(RingSound, 2, false);
		obj_player.ringCount += 1;
		obj_ringCount.totalRing += 1;
	}
}
