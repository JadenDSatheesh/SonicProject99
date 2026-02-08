/// @description Insert description here
// You can write your code in this editor

menu_x += (menu_x_target - menu_x) / menu_speed;

layer_hspeed("Background", speed)

if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		audio_play_sound(UI_ButtonScroll, 0, false)
		menu_cursor++;
		if (menu_cursor >= menu_items)
			menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		audio_play_sound(UI_ButtonScroll, 0, false)
		menu_cursor--;
		if (menu_cursor < 0)
			menu_cursor = menu_items-1;
	}
	
	if (keyboard_check_pressed (vk_enter))
	{
		audio_play_sound(UI_ButtonSelect, 0, false)
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}


if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch(menu_committed)
	{
		case 4: default: room_goto(SonicHubParent); break;
		case 3: room_goto(Lum_SnwTwn); break;
		case 2: room_goto(ScrapYd_Sneak); break;
		case 1: room_goto(Lush_Vlly); break;
		case 0: room_goto(Menu); break;
	}
}
