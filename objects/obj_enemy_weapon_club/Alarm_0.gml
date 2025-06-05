if image_index == 1 {
	image_index = 2;
}
if image_index == 3 {
	image_index = 0;
}

//if still in range
with (instance_nearest(x,y, obj_enemy)) {
	if collision_circle(global.player_x, global.player_y, enemy_distance, id, false, false) {
		my_weapon.alarm[1] = 60;

	}
}
	