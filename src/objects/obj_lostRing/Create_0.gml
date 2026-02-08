/// @description Insert description here
// You can write your code in this editor

// Set initial speed and direction when scattered
speed = random_range(2, 4);
direction = random(180);

ringBounce = 0;

instanceDestroy = false;

// Set gravity variables
gravity = 0.2;  // Controls how strong the pull to the ground is
gravity_direction = 270; // 270 degrees means downward