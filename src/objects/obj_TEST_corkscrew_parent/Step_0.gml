/// @description Insert description here
// You can write your code in this editor

if place_meeting(x-1,y,obj_player) && ((obj_player.ground) || obj_player.action == 12) && abs(obj_player.hsp) >= 4
{
	
	obj_player.action = 12
    obj_player.ground = false
    
	var relative_position, angle_in_corkscrew
    relative_position = (obj_player.x) - 10
    angle_in_corkscrew = degtorad((relative_position/288)*360)
	
    obj_player.y = y + 35 + (1 + cos(angle_in_corkscrew))*( 65*0.5 )
    //obj_Sonic.image_i = abs((radtodeg(angle_in_corkscrew)/360*11) mod 12)
}
else
	obj_player.rollingcork = false
    //obj_Sonic.y = y + 8 + (1 + cos(angle_in_corkscrew))*( 65*0.5 );
    