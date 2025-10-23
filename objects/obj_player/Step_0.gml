/// @description player movement

// controls the speed for all code
var PLAYER_SPEED = 6;

// if player uses arrows
if (keyboard_check(vk_right)) x += PLAYER_SPEED;
if (keyboard_check(vk_left)) x -= PLAYER_SPEED;
if (keyboard_check(vk_up)) y -= PLAYER_SPEED;
if (keyboard_check(vk_down)) y += PLAYER_SPEED;

// if player uses WASD
if (keyboard_check(ord("D"))) x += PLAYER_SPEED;
if (keyboard_check(ord("A"))) x -= PLAYER_SPEED;
if (keyboard_check(ord("W"))) y -= PLAYER_SPEED;
if (keyboard_check(ord("S"))) y += PLAYER_SPEED;