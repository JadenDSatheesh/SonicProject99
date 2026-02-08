// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CalcAttack(hitbox)
{
	mask_index = hitbox;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, obj_entity, hitByAttackNow, false)
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with (hitID)
				{
					if (object_is_ancestor(object_index, obj_rpg_enemy))
					{
						HurtEnemy(id, 10, other.id, 5);
					}
					else if (entityHitScript != -1)
					{
						script_execute(entityHitScript)
					}
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = spr_sonic_rpg;
}