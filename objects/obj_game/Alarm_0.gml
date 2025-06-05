if(choose(0,1) == 0) {
	// go right or the left
	var _xx = irandom_range(0, 800);
	var _yy = choose(0, 512);	
} else {
	//go to top or bottom
	var _xx = choose(0, 800);	
	var _yy = irandom_range(0, 512);
}

instance_create_layer(_xx,_yy, "Instances", obj_enemy);

alarm[0] = (4 * room_speed);