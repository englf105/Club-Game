image_speed = 0;
shield_hit = false;
invincible = false;
shield_health = 3;

// pink goblin progression
if global.level >= 9 and (instance_nearest(x,y, obj_enemy).enemy_type = 2) {
	sprite_index = spr_shield1;
	shield_health = 5;
}

else {
	sprite_index = spr_shield0;

}