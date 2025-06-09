if (image_index = 1 or image_index = 3) {
	with (other) {
		instance_destroy();
		repeat (1) {
			instance_create_layer(x,y,"Instances", obj_hit_particle)
		}
	}
}