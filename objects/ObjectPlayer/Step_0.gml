/// @description Insert description here

if (status == STATUS_OUT_OF_COMBAT) {	
	instance_create_depth(x,y+20,depth-1,ObjectExplosion);
	if (data.tanks > 0) {
		if (number == 1) create_player1();
		else create_player2();
		data.tanks--;
	}
	instance_destroy();
}

image_angle = direction;
image_alpha = approach(image_alpha,toAlpha,0.1);

if (enabled) {
	init_keys();
	
	switch (data.input) {
		case INPUT_KEYBOARD: get_keys(); break;
		case INPUT_JOYSTICK: get_pad_values(4, data.keys); break;
	}
	
	key_actions();
}

stay_in_room_bounds();