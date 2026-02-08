/// @description Insert description here
// You can write your code in this editor



if place_meeting(x, y, obj_lostRing) && (ringLoss == false) && ringCrash == false
{
	with other 
	{
		
		instance_destroy()
		audio_play_sound(RingSound, 2, false);
		obj_player.ringCount += 1;
		obj_ringCount.totalRing += 1;
		
	}
}