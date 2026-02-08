/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_sonic_rpg)) && (position_meeting(obj_sonic_rpg.x, obj_sonic_rpg.y, id))
{
	if (!instance_exists(obj_RPGtransition)) && (obj_sonic_rpg.state != PlayerStateDead)
	{
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
	
		global.targetDirection = obj_sonic_rpg.direction;
	
		with (obj_sonic_rpg) state = PlayerStateTransition;
		RoomTransition(TRANS_TYPE.FADE, targetRoom);
	
		instance_destroy();
	}
}