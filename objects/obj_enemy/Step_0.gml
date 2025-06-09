// Movement
var _xx = x;
var _yy = y;
var _walkspeed = 1;
var _player_domain = collision_circle(global.player_x, global.player_y, enemy_distance, id, false, false);

// so that the weapon is always by the enemy
with (my_weapon) {
	image_angle = point_direction(x, y, global.player_x, global.player_y) + 45;
	image_speed = 0;
	x = _xx
	y = _yy
}

if has_shield {
	with (my_weapon1) {
		image_angle = point_direction(x, y, global.player_x, global.player_y) + 90;
		image_speed = 0;
		x = _xx
		y = _yy
	}
}

//when the enemy leaves the collision circle
if !_player_domain {
	my_weapon.alarm[1] = 20;
	_walkspeed = 1;
}

//if the enemy is in the collision circle
if _player_domain {
	_walkspeed = 0;
}

//move towards player
move_towards_point(global.player_x, global.player_y, _walkspeed);


// Invinciblity frames
if (enemy_hit == true && invincible == false) {
	if has_shield = false {
		enemy_hp -= global.damage;
		image_blend = c_red;
		invincible = true;
		alarm[1] = 15;
	}
}

//layer depth
if global.player_y < y {
	depth = 1;
}
else depth = 5;

// Death
if enemy_hp <= 0 {
	instance_destroy();
	with (my_weapon) {
		instance_destroy();
	}
	if enemy_type = 2{
		with (my_weapon1) {
			instance_destroy();
		}
	}
	score += 5;
	repeat (10) {
		instance_create_layer(x,y,"Instances", obj_hit_particle)
	}
}

// Animation Direction
if (global.player_x > x) and (global.player_y > y) {
	image_index = 0 + j; //bottom right
}
if (global.player_x < x) and (global.player_y > y) {
	image_index = 2 + j; // bottom left
}
if (global.player_x > x) and (global.player_y < y) {
	image_index = 6 + j; // upper right
}
if (global.player_x < x) and (global.player_y < y) {
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