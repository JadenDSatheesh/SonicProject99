
function RobotWander()
{
	sprite_index = sprMove;
	
	if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed)
	{
		hSpeed = 0;
		vSpeed = 0;
		
		if (image_index < 1)
		{
			image_speed = 0.0;
			image_index = 0;
		}
		
		if (++wait >= waitDuration)
		{
			wait = 0;
			timePassed = 0;
			dir = point_direction(x, y, xstart, ystart) + irandom_range(-45, 45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
		
	}
	else
	{
		timePassed++;
		image_speed = 1.0;
		var _distanceToGo = point_direction(x, y, xTo, yTo);
		var _speedThisFrame = enemySpeed;
		
		if (_distanceToGo < enemySpeed)
		{
			_speedThisFrame = _distanceToGo;	
		}
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(_speedThisFrame, dir);
		vSpeed = lengthdir_y(_speedThisFrame, dir);
		if hSpeed != 0
		{
			image_xscale = -sign(hSpeed);
		}
		
		EnemyTileCollisions();
	}

	if (++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if (instance_exists(obj_sonic_rpg)) && (point_distance(x, y, obj_sonic_rpg.x, obj_sonic_rpg.y) <= enemyAggroRadius)
		{
			state = ENEMYSTATE.CHASE;
			target = obj_sonic_rpg;
		}
	}
}


function RobotChase()
{
	sprite_index = spr_enemy_robot;
	if instance_exists(target)
	{
		xTo = obj_sonic_rpg.x;
		yTo = obj_sonic_rpg.y;
		
		var _distanceToGo = point_direction(x, y, obj_sonic_rpg.x, obj_sonic_rpg.y);
		image_speed = 1.0;
		
		dir = point_direction(x, y, obj_sonic_rpg.x, obj_sonic_rpg.y);
		if (_distanceToGo > enemySpeed)
		{
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		}
		else
		{
			hSpeed = lengthdir_x(_distanceToGo, dir);
			vSpeed = lengthdir_y(_distanceToGo, dir);
		}
		if (hSpeed != 0)
		{
			image_xscale = -sign(hSpeed);
		}
		
		EnemyTileCollisions();
	}
	
	if instance_exists(target) && (distance_to_object(obj_sonic_rpg) <= enemyAttackRadius)
	{
		state = ENEMYSTATE.ATTACK;
		sprite_index = spr_enemy_robot_attack;
		image_index = 0;
		image_speed = 1.0;
		
	}
}



function RobotAttack()
{
	global.ableToHurt = true;
	var _spd = enemySpeed + 3;
	
	if (floor(image_index) == 5) || (floor(image_index == 6))
	{
		image_speed = 0;
	}
	
	var _distanceTo = distance_to_object(obj_sonic_rpg);
	
	
	if (_distanceTo - 1 > _spd)
	{
		
		hSpeed = 0;
		vSpeed = 0;
		if (hSpeed != 0)
			image_xscale = -sign(hSpeed);
		
		stateTarget = ENEMYSTATE.CHASE;
		stateWaitDuration = 15;
		state = ENEMYSTATE.WAIT;
		
	}
	else
	{
		if (floor(image_index) == 5)
		{
			stateTarget = ENEMYSTATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMYSTATE.WAIT;
		}
	}
}



function RobotHurt()
{
	global.ableToHurt = false;
	sprite_index = spr_ring;
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	if (_distanceToGo > enemySpeed)
	{
		image_speed = 1.0;
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);;
		if (hSpeed != 0)
			image_xscale = -sign(hSpeed);
		
		if (EnemyTileCollisions())
		{
			xTo = x;
			yTo = y;
		}
	}
	else
	{
		global.ableToHurt = true;
		x = xTo;
		y = yTo;
		if (statePrevious != ENEMYSTATE.ATTACK)
		{
			state = statePrevious;
		}
		else
			state = ENEMYSTATE.CHASE;
	}
}



function RobotDie()
{
	flash = 0;
	global.ableToHurt = false;
	sprite_index = spr_explode;
	image_speed = 1.0;
	
	//(sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps))
	if (image_index + (sprite_get_speed(sprite_index) / (game_get_speed(gamespeed_fps) + 5)) >= image_number)
	{
		instance_destroy();
	}
	else
	{
		if (image_index == 6)
			instance_destroy();
	}
	
}