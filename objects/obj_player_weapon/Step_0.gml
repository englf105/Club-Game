var _key_attack = keyboard_check_pressed(vk_space);

x = global.player_x;
y = global.player_y;

global.player_direction = image_angle;

image_angle = point_direction(x, y, mouse_x, mouse_y) + 45;

if _key_attack and image_index == 0 {
	image_index = 1;
	alarm[0] = 2;
}
if _key_attack and image_index == 2 {
	image_index = 3;
	alarm[0] = 2;
}