/// @description Insert description here
// You can write your code in this editor

show_debug_message(obj_platform_moving.PlatHit);

if GoinUp == true
	hsp = -1;
if GoinDown == true
	hsp = 1;

if place_meeting(x, y-2, obj_player) 
{
	
	PlatHit = true;
}

//if PlatHit == true
//{
//	show_message("spsp")
//}


var _p = instance_place(x, y - 1, obj_player);

if (_p != noone)
{
    // Make sure the player is really on top (not stuck inside the side)
    if (_p.bbox_bottom <= bbox_top + 3 &&
        _p.bbox_right > bbox_left &&
        _p.bbox_left < bbox_right)
    {
        _p.x += hsp;
        _p.y += vsp;
    }
}

y += vsp;
x += hsp;

