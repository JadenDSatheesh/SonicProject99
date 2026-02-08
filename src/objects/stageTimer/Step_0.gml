/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape))
{
	colorOutline = c_blue;
}
else
	colorOutline = c_silver;


font_enable_effects(ft_Lives, true,
{
	outlineEnable: true,
	outlineDistance: 3,
	outlineColor: colorOutline
	});
	
