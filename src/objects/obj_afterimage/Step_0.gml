/// @description Insert description here
// You can write your code in this editor

image_xscale = obj_player.image_xscale;
image_angle = obj_player.image_angle;
image_index = obj_player.image_index;

if obj_player.action = 1
	object_set_visible(obj_afterimage, false)
else
	object_set_visible(obj_afterimage, true)

if image_alpha > 0
{
	image_index = obj_player.image_index;
	image_alpha = image_alpha - .17;
}
else
	instance_destroy();