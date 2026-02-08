/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, angle, image_blend, image_alpha);

//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);


if shieldPower == true
{
	draw_sprite_ext(spr_lightshield, shieldCount / 4, obj_player.x, obj_player.y, obj_player.image_xscale, 
		obj_player.image_yscale, obj_player.image_angle, image_blend, shieldAlpha)
}

if blitzTrail == true
{
	draw_sprite_ext(spr_trail, shieldCount / 4, obj_player.x, obj_player.y, obj_player.image_xscale, 
		obj_player.image_yscale, obj_player.image_angle, image_blend, 1)
}

//var inst = instance_place(x, y + 1, obj_ground);
//if (inst != noone)
//{
//    draw_set_color(c_blue);
//    draw_rectangle(inst.bbox_left, inst.bbox_top, inst.bbox_right, inst.bbox_bottom, false);
//}