/// @description Insert description here

if (status == STATUS_OUT_OF_COMBAT) {	
	instance_create_depth(x,y+20,depth-1,ObjectExplosion);
	instance_destroy();
}

image_angle = direction;

image_alpha = approach(image_alpha,toAlpha,0.1);

if (enabled) {
	init_keys();
	get_keys();
	key_actions();
}

stay_in_room_bounds();