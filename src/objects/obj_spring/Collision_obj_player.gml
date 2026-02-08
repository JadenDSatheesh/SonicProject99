/// @description Insert description here
// You can write your code in this editor
image_index = 0;
image_speed = 1;

if activate
{
    other.angle = 0   
    other.action = 5
    other.ground = false

    activate = false

    if image_angle < 90 && image_angle > 270
        other.xdir = 1
    else if image_angle > 90 && image_angle < 270
        other.xdir = -1
}