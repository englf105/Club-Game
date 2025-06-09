var _key_attack = keyboard_check(vk_space);

x = global.player_x;
y = global.player_y;

global.player_direction = image_angle;

image_angle = point_direction(x, y, mouse_x, mouse_y) + 45;

if _key_attack && !attacking {
	alarm[1] = 1;
	attacking = true;
}

if global.class == 1 {
	weapon = 0;
	if global.level > 4 {
		weapon = 1;
		obj_player.has_shield = true;
	}
	if global.level > 6 {
		weapon = 2;
	}
}
if global.class == 2 {
	weapon = 3;
	if global.level > 4 {
		weapon = 4;
	}
	if global.level > 6 {
		weapon = 5;
	}
}

if weapon = 0 { 
	sprite_index = spr_sword0 ;
	global.attack_speed = 20;
	global.damage = 1;
}

if weapon == 1 { 
	sprite_index = spr_sword1 ;
	global.attack_speed = 20;
	global.damage = 2;
}

if weapon == 2 { 
	sprite_index = spr_sword2 ;
	global.attack_speed = 20;
	global.damage = 4;
}

if weapon == 3 { 
	sprite_index = spr_heavy0 ;
	global.attack_speed = 40;
	global.damage = 2;
}

if weapon == 4 { 
	sprite_index = spr_heavy1 ;
	global.attack_speed = 40;
	global.damage = 4;
}

if weapon == 5 { 
	sprite_index = spr_heavy2 ;
	global.attack_speed = 40;
	global.damage = 8;
}

if (image_angle > 270) {
		depth = 4;
}
else {
		depth = 2;
}