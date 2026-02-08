/// @description Insert description here
// You can write your code in this editor

//show_debug_message(global.targetX)

state = PlayerStateFree;
stateAttack = AttackSlash;
hitByAttack = -1;
lastState = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;

speedWalk = 2.0;
speedRoll = 3.5;
distanceRoll = 72;
distanceBonk = 40;
distanceBonkHeight = 12;
speedBonk = 3.5;
z = 0;

invincibility = 0;
flash = 0;
flashShader = shFlash;

animationEndScript = -1;

spriteRoll = spr_sonic_rpg_roll;
spriteRun = spr_sonic_rpg_run;
spriteIdle = spr_sonic_rpg;
localFrame = 0;

x = global.targetX;
y = global.targetY;
direction = global.targetDirection;
