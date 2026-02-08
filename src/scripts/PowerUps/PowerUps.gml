// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PowerUps(_index)
{
	message = instance_create_depth(x, y, -200, obj_box_pop)
	message.image_index = _index + 1;
	
	//_index = round(_index);
	
	if (_index >= 0 && _index < 1)
	{
		obj_player.blitzTrail = true;
	}
	else if (_index >= 1 && _index < 2)
	{
		obj_player.shieldPower = true;
	}
	else if (_index >= 2 && _index <= 3)
	{
		obj_player.afterImage = true;
	}
	
	obj_player.PUtimer = 1000;
	obj_player.start_timer = true;
}