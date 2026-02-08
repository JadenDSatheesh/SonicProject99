/// @description Insert description here
// You can write your code in this editor

with (obj_sonic_rpg) 
{
	if (state != PlayerStateDead)
		state = PlayerStateTransition;
}

if (leading == OUT)
{
	percent = min(1, percent + TRANSITION_SPEED);
	
	if (percent >= 1)
	{
		room_goto(target);
		leading = IN;
		
		if (obj_sonic_rpg.state = PlayerStateDead)
		{
			obj_sonic_rpg.x = 160;
			obj_sonic_rpg.y = 128;
		}
		
	}
}
else
{
	obj_sonic_rpg.state = PlayerStateFree
	percent = max(0, percent - TRANSITION_SPEED);
	if (percent <= 0)
	{
		instance_destroy();
	}
}
