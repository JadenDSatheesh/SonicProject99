/// @description Insert description here
// You can write your code in this editor

if place_meeting( x + hsp, y, obj_ground)
{	
	if (place_meeting(x + hsp, y - abs(hsp) - 1, obj_ground))
	{
		x += _subPixel;
	}
}