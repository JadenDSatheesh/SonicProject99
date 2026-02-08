// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HurtPlayer(_direction, _force, _damage)
{
	
	if (obj_sonic_rpg.invincibility <= 0 && global.ableToHurt == true)
	{
		global.playerHealth = max(0, global.playerHealth - _damage)
		
		if (global.playerHealth > 0)
		{
			with (obj_sonic_rpg)
			{
				state = PlayerStateBonk;
				direction = _direction - 180;
				moveDistanceRemaining = _force;
				ScreenShake(2, 10);
				flash = 0.7;
				invincibility = 180;
				flashShader = shRedFlash;
			}
		}
		else
		{
			with (obj_sonic_rpg) state = PlayerStateDead;
		}
		
		
	}
	
	show_debug_message(global.playerHealth);
}