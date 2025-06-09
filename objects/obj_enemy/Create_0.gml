image_speed = 0;
enemy_type = choose(0, 1, 2);
has_shield = false;

// Enemy Instance Info
if enemy_type == 0 {
	enemy_hp = 3;
	enemy_distance = 16;
	sprite_index = spr_enemy;
}

if enemy_type == 1 {
	enemy_hp = 2;
	enemy_distance = 96;
	sprite_index = spr_enemy_1;
}
if enemy_type == 2 {
	enemy_hp = 3;
	has_shield = true; 
	enemy_distance = 16;
	sprite_index = spr_enemy_2;
}

// Hit invincibility
enemy_hit = false;
invincible = false;

// Animation stuff
i = 0;
j = 0;
animation_speed = 2;

// Weapon
if enemy_type == 0 {
	my_weapon = instance_create_layer(x, y, "Instances", obj_enemy_weapon_club);
}
if enemy_type == 1 {
	my_weapon = instance_create_layer(x, y, "Instances", obj_enemy_weapon_bow);
}
if enemy_type == 2 {
	my_weapon = instance_create_layer(x, y, "Instances", obj_enemy_weapon_club);
	my_weapon1 = instance_create_layer(x, y, "Instances", obj_enemy_weapon_shield);
}