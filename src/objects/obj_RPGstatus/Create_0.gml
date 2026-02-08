/// @description Insert description here
// You can write your code in this editor

textcount = 0;

randomize();

room_goto(ROOM_START)

global.gamePaused = false;
global.textSpeed = .75;
global.targetRoom = -1;

global.targetX = 160;
global.targetY = 128;
global.targetDirection = 0;
global.playerHealthMax = 5;
global.playerHealth = 1;

global.ableToHurt = true;

global.iLifted = noone;

global.iCamera = instance_create_layer(0, 0, layer, obj_rpg_camera);

global.UI = instance_create_layer(0, 0, layer, obj_UI);

allowQ = true;
canPressQ = allowQ;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H)