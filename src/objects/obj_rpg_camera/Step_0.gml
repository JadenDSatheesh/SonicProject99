/// @description Insert description here
// You can write your code in this editor

if (instance_exists(follow))
{
	xTo = floor(follow.x);
	yTo = floor(follow.y);

}

// Update object position
x += (xTo - x) / 10;
y += (yTo - y) / 10;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

// ScreenShake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);


// IF YOU CHANGE THE 1 / shakeLENGTH to -, IT SHAKES CONTINOUSLY



shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));


// Update Camera View
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);