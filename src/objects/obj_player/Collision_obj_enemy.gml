/// @description Insert description here
// You can write your code in this editor

if ((sprite_index == spr_sonic_stomp || sprite_index == spr_sonic_jump ||  sprite_index == spr_sonic_charge || sprite_index == spr_sonic_spindash || sprite_index == spr_sonic_spingrind) || (sprite_index == spr_manic_jump)) && place_meeting(x, y, obj_enemy) && !transparent
{
	
	if (obj_player.action != 9)
		vsp = -4;
	
	//if (hsp > 0)
	//{
	//	hsp = -3;
	//}
	//else
	//{
	//	hsp = 3;
	//}
	with other 
	{	
		instance_create_layer(x, y, layer, obj_explode);
		audio_play_sound(BoomExplode, 3, false);
		stunLock = false;
		instance_destroy();
	}
	alarm[5] = 64;
}

if ((sprite_index != spr_sonic_stomp || sprite_index != spr_sonic_jump ||  sprite_index != spr_sonic_charge || sprite_index != spr_sonic_spindash || sprite_index != spr_sonic_spingrind) || (sprite_index != spr_manic_jump)) && place_meeting(x, y, obj_enemy) && invincibilityFrames == false && !transparent && !blitzPower
{
	LockControls = true;
	stunLock = true;
	stunLock2 = true;
	DamageSprite = true;
	ringLoss = true;	
	
	
	longRingTime = true;

	
	if (stunLock == true)
	{
		sprite_index = spr_sonic_damage;
		LockControls = true;
		alarm[2] = 30;
		if (image_xscale == 1)
		{
			obj_ringCount.ringCount = 0;
			vsp = -3;
			hsp = -4;
		}
		else if (image_xscale == -1)
		{
			obj_ringCount.ringCount = 0;
			vsp = -3;
			hsp = 4;
		}
	}
			
			//else if (hsp < 11)
			//{
			//	hsp = 0;
			//	show_message("SUM");
			//	hsp = -8;
			//	sprite_index = spr_sonic_damage;
			//	alarm[2] = 25;
			//}
			//else if (hsp < -11)
			//{
			//	hsp = 0;
			//	show_message("VUM");
			//	hsp = 8;
			//	sprite_index = spr_sonic_damage;
			//	alarm[2] = 25;
			//}
		

	
	key_r = false;
	key_l = false;
	
	
	if (invincibilityFrames == false && shieldPower == false)
	{
		if (obj_ringCount.totalRing > 0 && ringLoss == true && !ringPass)
		{
			ringCrash = true;
			
			ring_count = obj_ringCount.totalRing; // Save the current ring count
		    if (ring_count > 20)
			{
				ring_count = 15;
			}
			totalRing = 0; // Reset the player’s ring count to zero

		    for (var i = 0; i < ring_count; i++)
			{
		        // Create a ring object at the player’s position
		        var ringScatter = instance_create_layer(x, y - 60, "RingLossLayer", obj_lostRing);
		        ringScatter.speed = random_range(1, 5);
				// Set a random speed
		        ringScatter.direction = random(360);     // Scatter in a random direction
		    }
			ringLoss = false;
			
			alarm[1] = 500;
	
			ringCount = 0;
			obj_ringCount.totalRing = 0;
			ringPass = true;
			alarm[0] = 30;
		}
		else if (obj_ringCount.totalRing == 0 && ringLoss && !ringPass)
		{
			global.Lives--;
			
			//show_message("KILLMYBITCHASS")
			if (global.Lives >= 0 && Ihit = false)
			{
				//show_message("humthebum")
				obj_ringCount.next_ring_life = 5;
				Ihit = true;
			}
			if (global.Lives > 0 && SavePointHit == false)
			{
				if swapCount == 1
				{
					image_speed = 0;
					sprite_index = spr_manic_dead;
					if vsp < 0
						image_index = 0;
					else
						image_index = 1;
				}
				else
					sprite_index = spr_sonic_dead;
					
				ringLoss = true;
				vsp = -7;
				hsp = 0;
				instance_deactivate_object(obj_camera);
				alarm[11] = 55;
				SavePointHit = false;
				transparent = true;
				alarm[6] = 110;
			}
			else if global.Lives <= 0 
			{
				if swapCount == 1
				{
					image_speed = 0;
					sprite_index = spr_manic_dead;
					if vsp < 0
						image_index = 0;
					else
						image_index = 1;
				}
				else
					sprite_index = spr_sonic_dead;
					
				ringLoss = true;
				vsp = -7;
				hsp = 0;
				instance_deactivate_object(obj_camera);
				
				alarm[6] = 80;
				SavePointHit = false;
				transparent = true;
			}
			else if (global.Lives > 0 && SavePointHit == true)
			{
				if swapCount == 1
				{
					image_speed = 0;
					sprite_index = spr_manic_dead;
					if vsp < 0
						image_index = 0;
					else
						image_index = 1;
				}
				else
					sprite_index = spr_sonic_dead;
				ringLoss = true;
				vsp = -7;
				hsp = 0;
				obj_ringCount.next_ring_life = 5;
				instance_deactivate_object(obj_camera);
				alarm[11] = 55;
				transparent = true;
				alarm[6] = 110;
			}
			else if (global.Lives > 0 && SavePointHit == false)
			{
				sprite_index = spr_sonic_dead;
				ringLoss = true;
				vsp = -7;
				hsp = 0;
				obj_ringCount.next_ring_life = 5;
				instance_deactivate_object(obj_camera);
				alarm[11] = 55;
				transparent = true;
				room_goto(room);
			}
		}
	}
	
	if shieldPower == true
		shieldPower = false;
	
}


