/// @description Insert description here
// You can write your code in this editor

cam = view_camera[0];

enum TRANS_TYPE
{
	SLIDE,
	FADE,
	PUSH,
	STAR,
	WIPE
}

width = 5000;
height = 1000;
heightHalf = (height * 0.2) + 455;

percent = 0;
leading = OUT;