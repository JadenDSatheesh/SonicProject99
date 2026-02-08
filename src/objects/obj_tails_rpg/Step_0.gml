/// @description Insert description here
// You can write your code in this editor

var _totalFrames = sprite_get_number(sprite_index) / 3.99;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / 60;

	if (localFrame >= _totalFrames)
	{
		animationEnd = true;
		localFrame -= _totalFrames;
	}
	else
		animationEnd = false;