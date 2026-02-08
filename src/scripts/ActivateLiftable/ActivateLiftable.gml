// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActivateLiftable(argument0)
{
	if (global.iLifted == noone)
	{
		PlayerActOutAnimation(spr_sonic_rpg_hold);

		spriteIdle = spr_sonic_rpg_hold;
		spriteRun = spr_sonic_rpg_run_hold;
		
		global.iLifted = argument0;
		with (global.iLifted)
		{
			lifted = true;
			persistent = true;
		}
	}
}