if (shield_hit == true && invincible == false) {
	shield_health -= global.damage;
	image_blend = c_red;
	invincible = true;
	alarm[1] = 15;
}

if shield_health <= 0 {
	speed = 10;
	repeat (10) {
		instance_create_layer(x,y,"Instances", obj_hit_particle)
	}
	instance_destroy();
	with (instance_nearest(x,y, obj_enemy)) { has_shield = false;}
}


if (image_angle > 270) {
		depth = 4;
		image_index = 0;
}
else {
		depth = 2;
		image_index = 1;
}