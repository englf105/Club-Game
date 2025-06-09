image_index += 1;
 
if image_index == 3 {
	var _inst = instance_create_layer(x, y, "Instances", obj_enemy_arrow);
	_inst.direction = image_angle - 45;
	_inst.image_angle = image_angle;
	image_index = 0;
}
else {
	alarm[0] = 8;
}

//if still in range
if image_index == 0 {
	with (instance_nearest(x,y, obj_enemy)) {
		if collision_circle(global.player_x, global.player_y, enemy_distance, id, false, false) {
			my_weapon.alarm[1] = 120;
		}
	}
}
	