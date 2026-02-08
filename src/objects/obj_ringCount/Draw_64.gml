/// @description Insert description here
// You can write your code in this editor

draw_set_font(ft_ringCount);

draw_set_halign(fa_left);

draw_set_colour(c_green);

draw_sprite(spr_hud_life, index, 120, 810);

if (totalRing > 0)
{
	draw_set_colour(c_yellow);
}
else
{
	draw_set_colour(c_red);
}

myScore = "RINGS:" + string(totalRing);
draw_text(60, 200, myScore);
draw_set_colour(c_white);

if (global.Lives == 0)
{
	draw_set_colour(c_red);
}
else
	draw_set_colour(c_green);

myLives = " X " + string(global.Lives);
draw_text(230, 905, myLives);

if obj_player.swapCount == 0
	index = 0;
else if obj_player.swapCount == 1
	index = 1;
else
	index = 2;

draw_sprite(spr_lifeIcon, index, 60, 750);


draw_set_halign(fa_right);

draw_set_font(-1);

