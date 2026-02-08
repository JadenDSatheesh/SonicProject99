/// @description Insert description here
// You can write your code in this editor

surface_resize(application_surface, 1920, 1080)

gui_width = display_get_width();
gui_height = display_get_height();
gui_margin = 32;

menu_x = gui_width + 300;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;

menu_font = ft_Lives;
menu_itemHeight = font_get_size(ft_Lives);

menu_committed = -1
menu_control = true;

menu[2] = "Start";
menu[1] = "Something";
menu[0] = "Quit";

menu_items = array_length(menu);
menu_cursor = 2;