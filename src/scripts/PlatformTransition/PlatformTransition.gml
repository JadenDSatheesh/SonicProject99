// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlatformTransition()
{
	//show_message("kerm")
	
	if (!instance_exists(obj_Platformtransition))
	{
		with (instance_create_depth(0, 0, -9999, obj_Platformtransition))
		{
			type = argument[0];
			target = argument[1];
		}
	}
}