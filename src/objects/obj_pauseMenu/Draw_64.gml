/// @description Insert description here
// You can write your code in this editor

//window_set_fullscreen(true);

draw_set_font(ft_Lives);
var offset = 2;

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);


if instance_exists(obj_RPGstatus) && pause
{
	draw_set_font(ft_Pause);
	draw_set_halign(fa_center);
	draw_text(40, 130, string("< Game Paused >"));
	draw_set_halign(-1);
	draw_set_halign(fa_left);
}
else if (pause)
{
	//draw_set_color(c_black);
	//draw_set_alpha(0.5);
	//draw_rectangle(0, 0, 1920, 1080, false);
	//draw_set_color(-1);
	//draw_set_alpha(1);
	//draw_set_color(c_silver);
	//draw_set_font(ft_Pause);
	draw_set_alpha(1.0);
	draw_set_halign(fa_middle);
	draw_text(display_get_width() / 2, display_get_height() / (3.5), string("< Game Paused >"));
	draw_set_halign(-1);
}

if (pause)
{
	for (var _n = 0; _n < 2; _n++)
		{
			var _print = "";
			var col = c_white;
			if (_n == pauseOptionSelected)
			{
				_print += "> " + pauseOption[_n]
				var col = c_red;
			}
			else
			{
				_print += pauseOption[_n];
				var col = c_red;
				
			}
			draw_text(resW * 1/3, resH * 0.45 + (_n * 95), _print);
		
		var xx = menu_x;
		var yy = menu_y - (menu_itemHeight * (_n * 1.5));
		

		draw_set_color(col);
		}
}

//!!
draw_set_color(-1);
//!!



