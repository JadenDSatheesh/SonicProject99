/// @description Insert description here
// You can write your code in this editor

if obj_player.sprite_index == spr_sonic_jump
{
	obj_player.vsp = -4;
}

message = instance_create_depth(x, y, -200, obj_box_pop)
message.image_index = 0;