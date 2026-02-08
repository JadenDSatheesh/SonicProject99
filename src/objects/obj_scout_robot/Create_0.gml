/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

sprMove = spr_enemy_robot;
sprAttack = spr_enemy_robot_attack;
sprHurt = spr_ring;//spr_enemy_robot_hurt
sprDie = spr_explode;

enemyScript[ENEMYSTATE.WANDER] = RobotWander;
enemyScript[ENEMYSTATE.CHASE] = RobotChase;
enemyScript[ENEMYSTATE.ATTACK] = RobotAttack;
enemyScript[ENEMYSTATE.HURT] = RobotHurt;
enemyScript[ENEMYSTATE.DIE] = RobotDie;