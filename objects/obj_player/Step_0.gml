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

// rotates the player
image_angle = point_direction(x, y, mouse_x, mouse_y);

// shooting
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	cooldown = 6;
}
cooldown = cooldown - 1;