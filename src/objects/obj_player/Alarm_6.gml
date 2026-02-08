/// @description Insert description here
// You can write your code in this editor

transparent = false;
invincibilityFrames = true;
DeadSprite = false;

//show_message("head")


instance_activate_object(obj_camera);


if (SavePointHit == true)
{
	LockControls = false;
	obj_player.x = newSpotx;
	obj_player.y = newSpoty;
}
else if (global.Lives <= 0)
{
	room_goto(GameOver)
}
else if (global.Lives > 0 && SavePointHit == false)
{
	room_goto(room);
}
else
	game_restart();