/// @description Update Camera

if (instance_exists(follow))
{
	xTo = follow.x + 5;
	yTo = follow.y + 40;

}

// Update object position
if obj_player.canFollow == true
{
	x += (xTo - x) / 4;
	y += (yTo - y) / 4;

	x = clamp(x, view_w_half+5, room_width-view_w_half+5);
	y = clamp(y, view_h_half+5, room_height-view_h_half+5);

	// Update Camera View
	camera_set_view_pos(cam, x-view_w_half, y-view_h_half-90);
}

