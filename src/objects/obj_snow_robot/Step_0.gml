/// @description Insert description here
// You can write your code in this editor

//show_debug_message(distanceToPlayer)

//show_debug_message(image_xscale)

x += hsp * xscale;

// Check for wall collisions
if (place_meeting(x + xscale, y, obj_ground))
{
    // Hit a wall – reverse direction
    
	
	if (image_xscale == -1)
		image_xscale = 1;
	else
		image_xscale = -1;
	
	xscale *= -1;
}

var _subPixel = .5;


// Gravity (optional if not using physics)
if (!place_meeting(x, y + 1, obj_ground)) {
    y += 4; // fall speed
}

if !place_meeting( x + hsp, y + 1, obj_ground ) && place_meeting( x + hsp, y + abs(hsp)+1, obj_ground )
{
	while !place_meeting( x + hsp, y + _subPixel, obj_ground )
	{
		y += _subPixel;
	}
}


//Y Movement //Gravity
var _subPixel = .5;

var platformbelow = instance_place(x, y + 1, obj_ground);

	if place_meeting( x, y + 1, obj_ground)
	{
		//Scoot up to the wall precisely
		var _pixelCheck = _subPixel * sign(hsp);
		
		
		while !place_meeting( x, y + _pixelCheck, obj_ground )
		{
			y += _pixelCheck;
		}
		
	}
