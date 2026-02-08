/// @description Insert description here
// You can write your code in this editor

if(!global.gamePaused)
{
	depth = -bbox_bottom;
	
	if (lifted) && (instance_exists(obj_sonic_rpg))
	{
		if (obj_sonic_rpg.sprite_index != spr_sonic_rpg_hold)
		{
			x = obj_sonic_rpg.x;
			y = obj_sonic_rpg.y;
			z = 34;
			depth = obj_sonic_rpg.depth - 1;
		}
	}
}

if (!lifted)
{
	if (thrown)
	{
		throwDistanceTravelled = min(throwDistanceTravelled + 3, throwDistance);
		x = xstart + lengthdir_x(throwDistanceTravelled, direction);
		y = ystart + lengthdir_y(throwDistanceTravelled, direction);
		if (tilemap_get_at_pixel(collisionMap, x, y) > 0)
		{
			thrown = false;
			grav = 0.1;
		}
		
		throwPercent = throwStartPercent + lerp(0, 1 - throwStartPercent, throwDistanceTravelled / throwDistance);
		z = throwPeakHeight * sin(throwPercent * pi);
		
		if (throwDistance == throwDistanceTravelled)
		{
			thrown = false;
			if (entityThrowBreak)
				instance_destroy();
		}
		
	}
	else
	{
		if (z > 0)
		{
			z = max(z - grav, 0);
			grav += 0.1;
			if (z == 0) && (entityThrowBreak)
				instance_destroy();
			
		}
		else
			grav = 0.1;
	}
}


flash = max(flash - 0.015, 0);