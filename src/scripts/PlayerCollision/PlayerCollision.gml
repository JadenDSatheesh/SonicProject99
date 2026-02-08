// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision()
{
	var _collision = false;
	
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed - 10) || tilemap_get_at_pixel(collisionMap, x, y + vSpeed + 1))
	{
		vSpeed = 0;
		_collision = true;
	}

	y += vSpeed;
	
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed - 8, y) || tilemap_get_at_pixel(collisionMap, x + hSpeed + 8, y))
	{
		hSpeed = 0;
		_collision = true;
	}
	
	x += hSpeed;
	
	return _collision;
}