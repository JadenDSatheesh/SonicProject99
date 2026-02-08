/// @description Insert description here
// You can write your code in this editor

image_xscale = obj_player.image_xscale;
image_angle = obj_player.image_angle;
image_index = obj_player.image_index;

image_alpha -= 0.05;
if (image_alpha <= 0) {
    instance_destroy();
}

image_index += 0.2;