draw_set_font(Font2);

draw_sprite_ext(spr_minimap, 0, 1390, 10, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_player_icon, 0, 1390 + global.player_x/4, 10 + global.player_y/4, 0.5, 0.5, global.player_direction, c_white, 1);

draw_set_font(Font1);
draw_text(10, 960, "WASD to move");
draw_text(10, 975, "SPACE to attack");


draw_sprite_ext(spr_status_bar, 0, 10, 10, health_size + 0.5, 2.5, 0, c_black, 1);
draw_sprite_ext(spr_status_bar, 0, 12.5, 12.5, health_size, 2, 0, c_gray, 1);
draw_sprite_ext(spr_status_bar, 0, 12.5, 12.5, health_size * (health / health_max), 2, 0, c_red, 1);
draw_text(15, 10, health);


draw_sprite_ext(spr_status_bar, 0, room_width - (4 * score_size),  75, score_size + 0.5, 2.5, 0, c_black, 1);
draw_sprite_ext(spr_status_bar, 0, room_width - (4 * score_size) + 2.5,  77.5, score_size, 2, 0, c_gray, 1);
draw_sprite_ext(spr_status_bar, 0, room_width - (4 * score_size) + 2.5, 77.5, score_size * (score / score_max), 2, 0, c_white, 1);


draw_set_halign(textalign_center);
draw_text_ext_transformed(room_width, 35, "Wave " + string(global.level), 128, 128, 1, 1, 0);
draw_set_halign(textalign_left);


// leveling
if global.level > 2 and global.class == 0 {
	draw_sprite_ext(spr_fighter_display, 0, 575, 20, 0.5, 0.5, 0, c_white, 1);
	draw_sprite_ext(spr_heavy_display, 0, 800, 20, 0.5, 0.5, 0, c_white, 1);
	
	if keyboard_check_pressed(ord("Q")) {
		global.class = 1;
	}
	if keyboard_check_pressed(ord("E")) {
		global.class = 2;
	}
}