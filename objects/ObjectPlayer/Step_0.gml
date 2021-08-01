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

init_keys();
	
switch (data.input) {
	case INPUT_KEYBOARD: get_keys(); break;
	case INPUT_JOYSTICK: get_pad_values(4, data.keys); break;
}

if (enabled) {
	if (is_undefined(engineSound)) engineSound = audio_play_sound_on(soundEmitter,data.vehicle.engineSound,true,1);
	key_actions();
}

if (start) {
	with (ObjectBattleField) {
		if(!gamePaused) pause_game();
		else resume_game();
	}
}

audio_emitter_position(soundEmitter,x,y,0);
audio_emitter_gain(soundEmitter, lerp(0.8,1,abs(speed)/data.vehicle.speed));
audio_emitter_pitch(soundEmitter, lerp(0.8,1.2,abs(speed)/data.vehicle.speed));
stay_in_room_bounds();

audio_listener_position(x,y,0);

// Dirt sounds
//if (speed > 0 && alarm_get(0) <= -1) alarm_set(0,5);