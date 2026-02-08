/// @description Insert description here
// You can write your code in this editor

randomize();

if (choose(1,1,1, 3) % 3 == 0)
{
	BackgroundID = layer_get_id("Back");
	BackAssetID = layer_get_id("Background");
	
	Background = layer_background_get_id(BackgroundID)
	BackAsset = layer_background_get_id(BackAssetID)
	
	layer_background_alpha(Background, 0);
	
	layer_background_alpha(BackAsset, 0.7)
	
	obj_snowController.maxSnow = 9000;
	obj_snow.fall_speed  = obj_snow.fall_speed + 5;
}