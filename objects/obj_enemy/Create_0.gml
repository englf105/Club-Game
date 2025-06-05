image_speed = 0;

// Enemy Instance Info
enemy_hp = 3;
enemy_type = 1;//choose(0,1);
enemy_distance = 16;
if enemy_type == 1 {
	enemy_distance = 96;
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