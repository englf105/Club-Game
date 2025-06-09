image_speed = 0;
club_damage = 1;
attack_speed = 20;

// green goblin progression
if global.level >= 5 and (instance_nearest(x,y, obj_enemy).enemy_type = 0) {
	sprite_index = spr_heavy0;
	club_damage = 2;
	attack_speed = 120;
}
if global.level >= 8 and (instance_nearest(x,y, obj_enemy).enemy_type = 0) {
	sprite_index = spr_heavy1;
	club_damage = 4;
	attack_speed = 120;
}
if global.level >= 10 and (instance_nearest(x,y, obj_enemy).enemy_type = 0) {
	sprite_index = spr_heavy2;
	club_damage = 8;
	attack_speed = 120;
}
else {
	sprite_index = spr_sword0;
	club_damage = 1;
	attack_speed = 60;
}

// pink goblin progression
if global.level >= 9 and (instance_nearest(x,y, obj_enemy).enemy_type = 2) {
	sprite_index = spr_sword1;
	club_damage = 4;
	attack_speed = 120;
}
if global.level >= 11 and (instance_nearest(x,y, obj_enemy).enemy_type = 2) {
	sprite_index = spr_heavy2;
	club_damage = 8;
	attack_speed = 120;
}
else {
	sprite_index = spr_sword0;
	club_damage = 1;
	attack_speed = 60;
}