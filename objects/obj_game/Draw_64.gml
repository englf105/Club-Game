draw_sprite_ext(spr_minimap, 0, 1390, 10, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_player_icon, 0, 1390 + global.player_x/4, 10 + global.player_y/4, 0.5, 0.5, global.player_direction, c_white, 1);

draw_text(10, 960, "WASD to move");
draw_text(10, 975, "SPACE to attack");


draw_sprite_ext(spr_status_bar, 0, 10,  10, 2 * health_max + 0.5, 2.5, 0, c_black, 1);
draw_sprite_ext(spr_status_bar, 0, 12.5,  12.5, 2 * health_max, 2, 0, c_gray, 1);
draw_sprite_ext(spr_status_bar, 0, 12.5, 12.5, 2 * health, 2, 0, c_red, 1);
draw_text(15, 10, health);

draw_sprite_ext(spr_status_bar, 0, 10,  35, score_max + 0.5, 2.5, 0, c_black, 1);
draw_sprite_ext(spr_status_bar, 0, 12.5,  37.5, score_max, 2, 0, c_gray, 1);
draw_sprite_ext(spr_status_bar, 0, 12.5, 37.5, score, 2, 0, $90E589, 1);
draw_text(15, 35, level);