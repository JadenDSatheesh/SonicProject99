/// @description Insert description here
// You can write your code in this editor

if (obj_player.ringLoss = true && !place_meeting(x, y, obj_player) && obj_player.longRingTime == true) 
{
	
	vspeed = .2;
	hspeed *= 0.98;

	// Check if the ring is on the ground
	if (place_meeting(x, y, obj_ground)) || (place_meeting(x, y, obj_spike))
	{
		
		vspeed = 0; // Reverse and reduce vertical speed to bounce
		
		// Stop bouncing if the ring is barely moving vertically
	    alarm[0] = 30;
	}
}

if (place_meeting(x, y, obj_ground)) || (place_meeting(x, y, obj_spike))
	{
		speed = 0;
		vspeed = -5; // Reverse and reduce vertical speed to bounce
		ringBounce++;
		// Stop bouncing if the ring is barely moving vertically
	}
if (ringBounce >= 2)
	{
		gravity = 0;
		vspeed = 0;
		speed = 0;
	}