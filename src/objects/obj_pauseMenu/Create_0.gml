/// @description Insert description here
// You can write your code in this editor

draw_set_font(ft_Pause);

Initialroom = 0;

pause = false;

pauseSurf = -1;
pauseSurfBuffer = -1;

menu_font = ft_Lives
menu_itemHeight = font_get_size(ft_Lives);

menu_committed = -1
menu_control = true;

resW = 1920;
resH = 1080;

pauseOption = ["Continue", "Save & Quit"]

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width / 4;
menu_y = 1000;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;

menu_control = true;
menu_cursor = 2;

pauseOptionSelected = 0;