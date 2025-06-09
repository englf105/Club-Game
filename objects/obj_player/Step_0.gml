var _key_up = keyboard_check(ord("W"));
var _key_left = keyboard_check(ord("A"));
var _key_down = keyboard_check(ord("S"));
var _key_right = keyboard_check(ord("D"));
var _key_attack = keyboard_check_pressed(vk_space);

global.player_x = x;
global.player_y = y;

if _key_up {
	if (y > 16) {
		y -= walkspeed;
	}
}
if _key_left {
	if (x > 8) {
		x -= walkspeed;	
	}
}
if _key_down {
	if (y < 496) {
		y += walkspeed;	
	}
}
if _key_right {
	if (x < 792) {
		x += walkspeed;	
	}
}

// Invinciblity frames
if (hit == true && invincible == false) {
	image_blend = c_red;
	health -= 1;
	invincible = true;
	alarm[0] = 15;
}

//Shield stuff
if has_shield = true && !get_shield {
	my_weapon = instance_create_layer(x, y, "Instances", obj_player_shield);
	get_shield = true
}

if has_shield {
	with (my_weapon) {
		image_angle = global.player_direction + 45;
		image_speed = 0;
		x = global.player_x
		y = global.player_y
	}
}

// Animation Direction
if (mouse_x > x) and (mouse_y > y) {
	image_index = 0 + j; //bottom right
}
if (mouse_x < x) and (mouse_y > y) {
	image_index = 2 + j; // bottom left
}
if (mouse_x > x) and (mouse_y < y) {
	image_index = 6 + j; // upper right
}
if (mouse_x < x) and (mouse_y < y) {
	image_index = 4 + j; //upper left
}

// Animation Speed
i += 1 * animation_speed;
if (i >= 60) {
	i = 0;
}
if (i > 30) {
	j = 1;
}
else if (i < 30) {
	j = 0;
}