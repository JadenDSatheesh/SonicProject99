// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerThrow()
{
	with (global.iLifted)
	{
		lifted = false;
		persistent = false;
		thrown = true;
		
		z = 34;
		throwPeakHeight = z + 10;
		throwDistance = entityThrowDistance + 20;
		throwDistanceTravelled = 0
		throwStartPercent = (13 / throwPeakHeight) * 0.5;
		
		throwPercent = throwStartPercent;
		direction = other.direction;
		
		xstart = x;
		ystart = y;
	}
	PlayerActOutAnimation(spr_sonic_rpg_hold);
	
	global.iLifted = noone;
	
	spriteIdle = spr_sonic_rpg;
	spriteRun = spr_sonic_rpg_run;
}