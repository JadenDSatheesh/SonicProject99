  /// @description Insert description here
// You can write your code in this editor

//show_debug_message(transparent);

jumpKey = keyboard_check_pressed(vk_space)
swapKey = keyboard_check_pressed(vk_lshift)

if action == 0 && vsp > 0 && sprite_index == spr_sonic_stand && ground == false
{
	action = 28
}

if swapKey && hsp == 0 && vsp == 0
{
	if swapCount < 2
		swapCount++;
	else
		swapCount = 0;
}

if transparent
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
	
	image_alpha = 1;
}

if ground == false
{
	if vsp = 0
	{
		isJump = true;
	}
	if vsp > 0
	{
		isJump = true;
	}
	else
		isJump = false;
}

if LockControls != true
{	
	rightKey = keyboard_check(vk_right)
	leftKey = keyboard_check(vk_left)
	downKey = keyboard_check_pressed(vk_down)
	upKey = keyboard_check(vk_up)
}
else
{
	keyboard_clear(vk_left);
	keyboard_clear(vk_right);
	
}

image_i = image_index;

if (rightKey || leftKey)
{
	timer = 800;
}

if (hsp = 0 && (!rightKey || !leftKey) && timer <= 0)
{
	//show_message("stop")
	timer2 -= 0.5;
	
	if (timer2 <= 0 && (!rightKey || !leftKey))
	{
		action = 8;
	}
}

//if sprite_index == spr_sonic_jumppanel_stand
//	show_message("wad")

PlayerPush = false;


if upKey && swapCount == 1 && jumpKey
{
	action = 10
}


if (y >= room_height)
{
	LockControls = true;
	
	//show_message("hit1");
	
	if sprite_index == spr_sonic_stomp
	{
		SonicStomp = false;
		action = 0;

	}

	DeadSprite = true;

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

	vsp = -11;
	hsp = 0;


	alarm[11] = 50;
	alarm[6] = 75;
	//show_message("hit1");
}


//WATER
if place_meeting(x, y, obj_water)
{
	underwater = true;
}


if underwater && choose(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3)%3 == 0
{
	instance_create_depth(x+choose(5,7,9)*image_xscale, y-20, 500, obj_bubble)
}

if place_meeting(x-1, y, obj_slant) && place_meeting(x+1, y, obj_slant)
{
	//show_message("stup")
	ground = true;
}


if shieldCount < 16
{
	shieldCount++;
	shieldAlpha = 0.3
}
else
{
	shieldCount = 0;
	shieldAlpha = 0.9;
}

// AFTERIMAGES
if (afterImage == true)
{
	instance_create_layer(x,y,"PlayerInstance", obj_afterimage);
	obj_afterimage.image_angle = image_angle;
	maxSpeed = 15;
}
else
	maxSpeed = 12;


if blitzTrail == true
{
	blitzPower = true;
}
else
	blitzPower = false;


if (start_timer && PUtimer > 0)
{
	PUtimer--;
}

if (PUtimer == 0)
{
	afterImage = false;
	start_timer = false;
	blitzTrail = false;
}



if vsp == 0
	flickCount = 90;



if (action == 1)
{
	image_speed = 0.75;
	
	if swapCount != 1
		sprite_index = spr_sonic_360;
	else
		sprite_index = spr_manic_360;
	
	x = instance_nearest(x,y,obj_swingbar).x;
	y = instance_nearest(x,y,obj_swingbar).y;
	hsp = 0;
	vsp = 0;
	
	SpringJump = false;
    
	if jumpKey && (image_i % 10 > 0 && image_i % 10 < 3)   
	    {
			audio_play_sound(RingSound,1,false)
	        //show_message(image_i);
			action = 3;
	        vsp = -7.75;
	        hsp = image_xscale * 5;
	    }
	else if jumpKey
	    {
			action = 3;
	        y += 5;
	    }
}

if (action == 2 && SpringJump == false)
{
	timer = 800;
	
	if (jump == false && ground && jumpCount == 1)
	{
		vsp = -7;
		ground = false;
		audio_play_sound(JumpSound, 1, false)
		if swapCount == 1
		{
			sprite_index = spr_manic_jump;
		}
		else
			sprite_index = spr_sonic_jump;
		
		image_speed = 0.2;
		jump = true;
	}
	
	jumpCount = 0;
	
	if (ground == true && jumpCount == 0)
	{
		if swapCount == 1
		{
			image_speed = 0.8
			sprite_index = spr_manic_run;
		}
		else
			sprite_index = spr_sonic_run;
		
		action = 0;
	}
	
	playerSpindash = false;
	currentSpindash = false;
	playerDucking = false;
	
}

if (action == 3)
{
	if ground == false
	{
		if swapCount == 1
		{
			sprite_index = spr_manic_jump;
		}
		else
			sprite_index = spr_sonic_jump;
		
		image_speed = 0.2;
	}
	else
	{
		action = 0;
	}
}

if (action == 4)
{
	hspeed = 0;
	hsp = 0;
	if (keyboard_check(vk_down) && ground)
	{
		speed = 0;
		LockControls = true;
		jump = true;
		playerDucking = true;
		
		if swapCount == 1
			sprite_index = spr_manic_crouch;
		else
			sprite_index = spr_sonic_crouch;
		
		if (jumpKey) && swapCount != 1
			action = 9;
		else if jumpKey && swapCount == 1
		{
			LockControls = false;
			playerDucking = false;
		}
	}
	else
	{
		LockControls = false;
		playerDucking = false;
		action = 0;
	}
}

if (action == 5)
{
	playerSpindash = false;
	currentSpindash = false;
	
	if ((sprite_index == spr_sonic_stomp))
	{
		vsp = -12;
	}
	if vsp < 0 
	{
		image_speed = 0.1;
		if swapCount != 1
			sprite_index = spr_sonic_springfall;
		else
			sprite_index = spr_manic_springup;
	}
	if (vsp > 0)
	{
		image_speed = 0.1;
		if swapCount != 1
			sprite_index = spr_sonic_springfall;
		else
			sprite_index = spr_manic_springfall;
	}
	if (vsp == 0 && ground == true)
	{
		SpringJump = false;
		action = 0;
	}
	if place_meeting(x,y,obj_swingbar)
		action = 1;
}

if (action == 6)
{
	image_speed = 1;
	SonicStomp = true;
	if (y >= room_height)
	{
		SonicStomp = false;
		action = 0;
	}
	hsp = 0;
	vsp = 10;
	sprite_index = spr_sonic_stomp;
	if ground = true
		action = 0;
}

if (action == 7)
{
	sprite_index = spr_sonic_push;
	if (PlayerPush == true && !playerSpindash && action != 5)
	{
		speed = 0;
		hsp = 0;
		hsp = 0;
	}
	else
		action = 0;
}

if (action == 8)
{
	image_speed = 0.3;
	if swapCount == 1
	{
		sprite_index = spr_manic_idle;
	}
	else
		sprite_index = spr_sonic_idle;
	
	timer2 = 0;
	timer = 0;
	if (rightKey || leftKey)
	{
		timer = 800;
		action = 0;
	}
}

if action == 9 && rollingcork == false
{
	timer = 800;
	if (playerSpindash == true)
	{
		sprite_index = spr_sonic_charge;
		//show_message("dang")
		image_speed = 1;
	}
	else if (currentSpindash && keyboard_check_released(vk_down))
	{
		sprite_index = spr_sonic_spingrind;
	}

	
	if ground && playerDucking && jumpKey
	{	
		LockControls = false;
		jump = true;
	
		playerSpindash = true;
		
	
		if playerSpindashTimer < 9
			playerSpindashTimer += 1.2;
	
		if playerSpindashTimer > 9
			playerSpindashTimer = 9;
	
		playerSpindashTimer = playerSpindashTimer - (( playerSpindashTimer / 2 ) - .8);
	
		//show_message("dang")
	
	}
	
	if ground && playerSpindash && keyboard_check_released(vk_down) && action != 2 && (rollingcork == false)
	{
		playerSpindash = false;
		currentSpindash = true;
	
		if (jump == false)
			playerDucking = false;
	
		sprite_index = spr_sonic_spindash;
				
		
		// NEED TO FIX

		
		if (place_meeting(x,y,obj_testslope) && hsp > 5)
		{
			vsp = -10;
		}
		
		
		if (image_xscale == 1) && place_meeting(x-5, y, obj_slant)
		{
			vsp -= 5;
		}
	
		if (image_xscale == 1) && place_meeting(x+5, y, obj_slant)
		{
			vsp -= 5;
		}
		
		
		// ^ IMPORTANT ^
		
		
		
		hsp = image_xscale * (5 + playerSpindashTimer);
		
		playerSpindash = false;
		playerSpindashTimer = 0;
	
		jump = true;
	
	}
	
	if (image_xscale == -1 && hsp > 0)
	{
		sprite_index = spr_sonic_spingrind;
	}
	
	if (image_xscale == 1 && hsp < 0)
	{
		image_xscale = -1;
		sprite_index = spr_sonic_spingrind;
	}

	if (hsp < 1 && hsp > -1 && currentSpindash)
	{
		playerSpindash = false;
		playerDucking = false;
		currentSpindash = false;
		action = 0;
	}
}

if action == 10
{
	LockControls = true;
	image_speed = .5
	
	timer = 800;
	
	if sprite_index == spr_manic_peelout_start
	{
		audio_play_sound(Peelout, 3, false)
	
		if (!audio_is_playing(Peelout))
			audio_stop_sound(Peelout)
	}
	
	if (peeltimer_active)
	{
	    sprite_index = spr_manic_peelout_start;
		peel_timer -= 1;
	    if (peel_timer <= 0)
		{
			peeltimer_active = false;

			sprite_index = spr_manic_peelout_end;
	    }
	}
	if keyboard_check_released(vk_up) && sprite_index != spr_manic_peelout_end
	{
		audio_stop_sound(Peelout)
		peel_timer = 120;
		peeltimer_active = true;
		LockControls = false;
		action = 0;
	}
	
	if keyboard_check_released(vk_up) && sprite_index == spr_manic_peelout_end
	{
		action = 11;
		peel_timer = 120;
		peeltimer_active = true;
		LockControls = false;
	}

}

if action == 11
{
	audio_play_sound(Peelout_Release, 3, false)
	
	if image_xscale = 1
		hsp += 12;
	else
		hsp -= 12;
	
	image_speed = 0.9
	sprite_index = spr_manic_peelout_run;
	action = 0;
}

if action == 12 && rollingcork == true
{
	currentSpindash = false
	sprite_index = spr_sonic_jump
}

if action == 12 && rollingcork == false
{
	currentSpindash = false
	sprite_index = spr_sonic_walk
	action = 0
}

if action == 24
	{
	    sprite_index = spr_sonic_jumppanel_dash;
		
		//show_message("STOP")
	    hsp = 0;
	    vsp = 0;
		
		QTELocked = true;
		
		//sprite_index = spr_sonic_push;
	    var speedJump = 13;
	    if jumppanel == 1
	    {
	        move_towards_point(instance_nearest(x,y,obj_jumppanel_1).x, instance_nearest(x,y,obj_jumppanel_1).y, speedJump)
	        if x > obj_jumppanel_1.x
	            image_index =  -1
	        else if x < obj_jumppanel_1.x
	            image_index = 1
	    }
	    if jumppanel == 2
	    {
	        move_towards_point(instance_nearest(x,y,obj_jumppanel_2).x,instance_nearest(x,y,obj_jumppanel_2).y,speedJump)    
	        if x > obj_jumppanel_1.x
	            image_xscale =  1
	        else if x < obj_jumppanel_1.x
	            image_xscale = -1
	    }
	    if jumppanel == 3
	    {
	        move_towards_point(instance_nearest(x,y,obj_jumppanel_3).x,instance_nearest(x,y,obj_jumppanel_3).y,speedJump)
	        if x > obj_jumppanel_1.x
	            image_xscale =  -1
	        else if x < obj_jumppanel_1.x
	            image_xscale = 1
	    }
	    if jumppanel == 4
	    {    
	        move_towards_point(instance_nearest(x,y,obj_jumppanel_4).x,instance_nearest(x,y,obj_jumppanel_4).y,speedJump)
	        if x > obj_jumppanel_1.x
	            image_xscale =  1
	        else if x < obj_jumppanel_1.x
	            image_xscale = -1
	    }
	    if jumppanel == 5
	    {
			move_towards_point(instance_nearest(x,y,obj_jumppanel_end).x,instance_nearest(x,y,obj_jumppanel_end).y,speedJump)
	        if x > obj_jumppanel_end.x
	            image_xscale =  1
	        else if x < obj_jumppanel_end.x
	            image_xscale = -1
	    }
	    if place_meeting(x,y,obj_jumppanel_end)
	    {
			QTELocked = false;
			
			jumppanel = 1;
			if image_xscale = -1
				image_xscale = image_xscale * -1;
			image_angle = obj_jumppanel_end.image_angle
			x = instance_nearest(x,y,obj_jumppanel_end).x - sin(degtorad(instance_nearest(x,y,obj_jumppanel_end).image_angle))*4;
			y = instance_nearest(x,y,obj_jumppanel_end).y - cos(degtorad(instance_nearest(x,y,obj_jumppanel_end).image_angle))*4;
			speed = 0;
			hsp += 1
			action = 0;
			
			jumpSequence = false;
			
	    }
	}
	//stick to jump panel
if action == 25
	{
		QTELocked = true;
		
		if (obj_jumppanel_parent.jumpSequence)
			sprite_index = spr_sonic_jumppanel_stand;
		else
			sprite_index = spr_manic_stand;
			
		i_angle = instance_nearest(x,y,obj_jumppanel_parent).image_angle
		hspeed = 0
	    vspeed = 0
	    hsp = 0
	    vsp = 0
	    x = instance_nearest(x,y,obj_jumppanel_parent).x - sin(degtorad(instance_nearest(x,y,obj_jumppanel_parent).image_angle))*4;
	    y = instance_nearest(x,y,obj_jumppanel_parent).y - cos(degtorad(instance_nearest(x,y,obj_jumppanel_parent).image_angle))*4;
	}

// PULLEY
if action == 27
	{
		
		image_speed = 0.45;
		
		if swapCount == 1
			sprite_index = spr_manic_grab;
		else if swapCount == 0
			sprite_index = spr_sonic_grab;
		else
			sprite_index = spr_sonia_grab;
		
		x = instance_nearest(x,y,obj_pulleyhandle).x
	    y = instance_nearest(x,y,obj_pulleyhandle).y
	    vsp = 0
	    hsp = 0
	}

if action == 28
{
	sprite_index = spr_sonic_springfall
	
	if ground == true
		action = 0
	
}

//X Movement //Direction
moveDir = rightKey - leftKey;
//Get xspd

if LockControls != true
{
	if rightKey
	{
		image_xscale = 1;
		if (!playerSpindash)
		{
			if (hsp >= 0)
			{
				hsp += acc;
			}
			else
				hsp += dcc;
		}
	}

	if leftKey
	{
		image_xscale = -1;
		if (!playerSpindash)
		{
			if (hsp <= 0)
			{
				hsp -= acc;
			}
			else
				hsp -= dcc;
		}
	}
}



if (ground) && !transparent
{
    if !keyboard_check(vk_left) && !keyboard_check(vk_right)
    {
        if hsp > 0
            hsp -= .07;
        if hsp < 0
            hsp += .07;
        if hsp <= .07 && hsp >= -.07
            hsp = 0;
        if hsp == 0 && vsp == 0
        {
            timer -= 1;
            if timer <= 0
            {
                timer = 100;
                action = 8;
            }
        }
    }
}


if hsp > maxSpeed
	hsp = maxSpeed;

else if hsp < -maxSpeed
	hsp = -maxSpeed;

if hsp > -acc && hsp < acc
	hsp = 0;



// === WALL RUNNING CHECK ===
if (wall_run)
{
    
	ground = true;
	angle = 90;
	
	// Try to stick to wall when fast enough
    if (hsp > 5 && place_meeting(x + 1, y, obj_ledge_run))
    {
        wall_run = true;
        wall_side = 1; // Right wall
        hsp = 0;
    }
    else if (hsp < -5 && place_meeting(x - 1, y, obj_ledge_run))
    {
        wall_run = true;
        wall_side = -1; // Left wall
        hsp = 0;
    }
}

if (wall_run)
{
    // Keep pushing Sonic against the wall
    x += wall_side;

    // Climb if player is pressing into the wall and has enough speed
    if (hsp > 5)
    {
        //show_message("ddodod")
		if ((wall_side == 1 && rightKey) || (wall_side == -1 && leftKey))
        {
			y -= 12; // Climb speed
        }
    }

    // Exit wall-run if no longer fast, not holding key, or wall is gone
    if (abs(hsp) <= 5 || !place_meeting(x + wall_side, y, obj_ground) || keyboard_check_pressed(vk_jump))
    {
        wall_run = false;
        wall_side = 0;
    }

    // Skip gravity while wall running
    grav = 0;
}


else
	angle = 0;




var _subPixel = .5;


// REGULAR GROUND


if place_meeting(x + hsp, y + 1, obj_ledge_curve) && hsp > 4.
{
	var _i = 10;
}
else
	var _i = .85;


if place_meeting( x + hsp, y, obj_ground) && !transparent
{	
	if (!place_meeting(x + hsp, y - abs(hsp) - _i, obj_ground))
	{
		while place_meeting(x + hsp, y, obj_ground)
		{
			y -= _subPixel;
		}
	}
	else
	{
		var _pixelCheck = _subPixel * sign(hsp);
		while !place_meeting( x + _pixelCheck, y, obj_ground )
		{
			x += _pixelCheck;
		}
		hsp = 0;
		PlayerPush = true;
	}
}

//Go Down Slopes
if !transparent && vsp >= 0 && !place_meeting( x + hsp, y + 1, obj_ground ) && place_meeting( x + hsp, y + abs(hsp)+1, obj_ground )
{
	while !place_meeting( x + hsp, y + _subPixel, obj_ground )
	{
		y += _subPixel;
	}
}


x += hsp;


//Y Movement //Gravity
vsp += grav;



var _subPixel = 0.5



var platformbelow = instance_place(x, y + vsp, obj_ground);


	if place_meeting( x, y + vsp, obj_ground) && !transparent
	{
		//Scoot up to the wall precisely
		var _pixelCheck = _subPixel * sign(vsp);
		
		
		while !place_meeting( x, y + _pixelCheck, obj_ground )
		{
			y += _pixelCheck;
		}
		
		vsp = 0;
		jump = false;
		ground = true;
		
		SonicStomp = false;
	}
	else
		ground = false


if (vsp >= 0 && !transparent)
{
    if (place_meeting(x, y + vsp, obj_semisolid))
    {
        var checkY = y + vsp;
        var inst = instance_place(x, checkY, obj_semisolid);
        
        if (inst != noone)
        {
            // Check if player bottom is above platform top (with tolerance)
            if (bbox_bottom <= inst.bbox_top + 5)
            {
                var _pixelCheck = _subPixel * sign(vsp);

                // Move player up pixel by pixel until no collision
                while (!place_meeting(x, y + _pixelCheck, obj_semisolid))
                {
                    y += _pixelCheck;
                }

                // Snap player on platform
                vsp = 0;
                jump = false;
                ground = true;
                SonicStomp = false;

                // Store the platform instance the player is standing on
                ground_platform = inst;
            }
        }
    }
}

// After collision handling, move player with platform if standing on one
// ground && instance_exists(obj_platform_moving) && obj_platform_moving != noone && obj_platform_moving.PlatHit == true && !place_meeting(x,y+2,obj_ground)




if jumpKey && ground == true && playerSpindash == false && !transparent && !upKey
{
	//show_message("shupt")
	jumpCount = 1;
	action = 2;
}


y += vsp;



if (PlayerPush == true && !playerSpindash && hsp = 0 && action = 0 && sprite_index != spr_sonic_jumppanel_dash)
{
	action = 7;
}

//Handle sprites
if (DamageSprite == false && DeadSprite == false && !SonicStomp && action == 0) && !transparent && (rollingcork == false)
{
	if (hsp == 0)
		{
			if swapCount == 1
				sprite_index = spr_manic_stand;
			else if (swapCount == 0)
				sprite_index = spr_sonic_stand
			else
				sprite_index = spr_sonia_stand
				
			if (keyboard_check(vk_down) && ground)
			{
				if (playerSpindash == false)
				{	
					action = 4;
					//image_index = sprite_get_number(sprite_index) - 1;
				}
			}
		
		}
	else if (hsp > -5 && hsp < 5)
		{
			image_speed = abs(hsp) / 6;
			if (currentSpindash == true) && rollingcork == false
			{
				sprite_index = spr_sonic_spingrind;
			}
			else
			{
				if swapCount == 1
					sprite_index = spr_manic_walk;
				else if swapCount == 0
					sprite_index = spr_sonic_walk;
				else
					sprite_index = spr_sonia_walk;
			}
		}
		else if (hsp >= -10 && hsp <= 10)
		{
			image_speed = abs(hsp) / 6;
			if (currentSpindash == true) && rollingcork == false
			{
				sprite_index = spr_sonic_spingrind;
			}
			else
			{
				if swapCount == 1
					sprite_index = spr_manic_run;
				else
					sprite_index = spr_sonic_run;
			}
		}
}
// Slopes

// Adjust sprite rotation based on the slope


if (SpringJump == true && action != 1)
{
	action = 5;
}


if (downKey && ground == false && !SpringJump && action != 7 && QTELocked == false) && swapCount != 1
{
	action = 6;
}


// Water Climb

in_water = place_meeting(x, y, obj_climb_oil) || place_meeting(x, y, obj_climb_water);

if (in_water)
{
    upKey = false;
	
	grav = 0.17; // Less gravity than normal
    vsp = clamp(vsp, -3.5, 3.5); // Limit fall speed

    if (jumpKey)
	{ // Use your actual jump key check here
		if sprite_index == spr_sonic_walk
			sprite_index = spr_sonic_jump;
		action = 2;
		vsp = -3; // Swim upward with each jump press
    }
} 
else {
    grav = 0.275; // Normal gravity
}

if place_meeting(x,y, obj_geyser) && obj_geyser.canPush == true
{
	vsp -= 0.45;
	sprite_index = spr_sonic_geyser
}
