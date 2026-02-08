/// @description Insert description here
// You can write your code in this editor


gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 300;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;

menu_font = ft_Lives
menu_itemHeight = font_get_size(ft_Lives);

menu_committed = -1
menu_control = true;

menu[4] = "Go To Hub";
menu[3] = "Go To Level";
menu[2] = "Go To Level 2";
menu[1] = "Go To Level 3";
menu[0] = "Quit";

menu_items = array_length_1d(menu)
menu_cursor = 2;