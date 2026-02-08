/// @description Insert description here
// You can write your code in this editor






draw_set_font(ft_Lives);

draw_set_halign(fa_left);

draw_set_colour(c_white);

//show_message("hehe");

draw_text(60, 110, string("TIME: "));

if count
{
	_sec += 1;
}

draw_set_colour(c_yellow);

if _sec = 60
{
	_sec = 0;
	_min += 1;
}

if _min = 60
{
	_min = 0;
	_hour += 1;
}


if (_hour < 10)
{
	draw_text(280, 110, string("0") + string(_hour) + string(":"));
}
else
	draw_text(280, 110, string(_hour) + string(":"));
if (_min < 10)
{
	draw_text(398, 110, string("0") + string(_min));
}
else
	draw_text(398, 110, string(_min));
	
	
draw_set_halign(fa_left);

draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(-1);