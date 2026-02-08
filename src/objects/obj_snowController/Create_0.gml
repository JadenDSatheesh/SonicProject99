/// @description Insert description here
// You can write your code in this editor

maxSnow = 3000;

for(i = 0; i < maxSnow + 4000; i++)
{
	instance_create_depth(random_range(0, room_width), random_range(0, room_height) + 10, 1700, obj_snow);
}