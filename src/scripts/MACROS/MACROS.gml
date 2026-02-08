// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro FRAME_RATE 60

#macro TILE_SIZE 16

#macro CARDINAL_DIR round(direction / 90)

#macro ROOM_START SonicHubChild_0

#macro RESOLUTION_W 336
#macro RESOLUTION_H 189

#macro TRANSITION_SPEED 0.0225
#macro OUT 0
#macro IN 1

enum ENEMYSTATE
{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}