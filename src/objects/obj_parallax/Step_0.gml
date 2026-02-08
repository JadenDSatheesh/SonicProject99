/// @description Insert description here
// You can write your code in this editor


//layer_y(_cam_x, lerp(camera_get_view_y(view_camera[0]), 0, .5)    );

layer_background_yscale(layer_background_get_id("Background"), 1)

var _cam_y = layer_get_id("Back");

layer_x(_cam_y, lerp(0, camera_get_view_x(view_camera[0]), 0.85)    );

if room == ScrapYd_Sneak
{
	layer_x("Background", layer_get_x("Background") + 1);
}

var _cam_z = layer_get_id("Treiades");

layer_x(_cam_z, lerp(0, camera_get_view_x(view_camera[0]), 0.65)    );


var _cam_alpha = layer_get_id("MovingBack0");

layer_x(_cam_alpha, lerp(0, camera_get_view_x(view_camera[0]), 0.2)    );

var _cam_a = layer_get_id("MovingBack1");

layer_x(_cam_a, lerp(0, camera_get_view_x(view_camera[0]), 0.12)    );

var _cam_b = layer_get_id("MovingBack2");

layer_x(_cam_b, lerp(0, camera_get_view_x(view_camera[0]), 0.12)    );



var _cam_c = layer_get_id("MovingBackAssets");

layer_x(_cam_c, lerp(0, camera_get_view_x(view_camera[0]), 0.15)    );