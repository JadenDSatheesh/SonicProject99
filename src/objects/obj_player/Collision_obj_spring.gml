/// @description Insert description here
// You can write your code in this editor

SpringJump = true;

var _bounce = 9

if image_index == spr_sonic_stomp
	_bounce = 12

if obj_spring.image_angle == 0
{
	vsp = -_bounce
}
else
{
	hsp = lengthdir_x(_bounce, obj_spring.image_angle);
	vsp = lengthdir_y(-(_bounce), obj_spring.image_angle);
}

	