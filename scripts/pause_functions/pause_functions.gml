// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pause_game() {
	audio_play_sound(SoundPause,1,false);
	ObjectBattleField.gamePaused = true;
	cursor_sprite		= SpriteCursor;
	var windowX			= room_width/2;
	var windowY			= room_height/2;
	var windowWidth		= 400;
	var windowHeight	= 200;
	var windowDepth		= -10000;
	
	pauseWindow				= instance_create_depth(windowX,windowY,windowDepth,ObjectWindow);
	pauseWindow.width		= windowWidth;
	pauseWindow.height		= windowHeight;
	pauseWindow.caption		= "GAME PAUSED";
	pauseWindow.captionY	= windowY - windowHeight/6;
	
	var backToMainMenuButtonWidth	= 180;
	var backToMainMenuButtonHeight	= 50;
	var backToMainMenuButton		= instance_create_depth(
		windowX - backToMainMenuButtonWidth/2,
		windowY + windowHeight/6 - backToMainMenuButtonHeight/2,
		windowDepth-1,
		ObjectButton
	);
	backToMainMenuButton.parent			= pauseWindow;
	backToMainMenuButton.level			= pauseWindow.level;
	backToMainMenuButton.caption		= "Back To Main Menu";
	backToMainMenuButton.width			= backToMainMenuButtonWidth;
	backToMainMenuButton.height			= backToMainMenuButtonHeight;
	backToMainMenuButton.onClickAction	= [ confirm, "Finish this war?", [ fade_screen, FADE_OUT, FADE_TIME, undefined, RoomStart ] ];
	
	alarm0 = alarm_get(0);
	alarm_set(0,-1);
	with (ObjectEntity) freeze_object();
}

function resume_game() {
	ObjectBattleField.gamePaused = false;
	cursor_sprite = -1;
	with(ObjectWindow) close = true;
	with (ObjectEntity) unfreeze_object();
	alarm_set(0,alarm0);
}

function freeze_object() {
	save_state();
	enabled = false;
	speed = 0;
	image_speed = 0;
	for (var i=0;i<array_length(alarm);i++) alarm_set(alarm[i],-1);
	
	if (variable_instance_exists(id, "soundId")) {
		if (!is_undefined(soundId)) {
			if (audio_is_playing(soundId)) audio_pause_sound(soundId);
		}
	}
	
	if (variable_instance_exists(id, "engineSound")) {
		if (!is_undefined(engineSound)) {
			if (audio_is_playing(engineSound)) audio_pause_sound(engineSound);
		}
	}
}

function unfreeze_object() {
	speed		= state.speed ? state.speed : 0;
	image_speed	= state.image_speed ? state.image_speed : 0;
	enabled		= state.enabled == undefined ? false : state.enabled;
	alarms		= variable_struct_get(state, "alarms");
	for (var i=0;i<array_length(alarm);i++) alarm_set(alarm[i],alarms[i]);
	state = {};
	
	if (variable_instance_exists(id, "soundId")) {
		if (!is_undefined(soundId)) {
			if (audio_is_paused(soundId)) audio_resume_sound(soundId);
		}
	}
	
	if (variable_instance_exists(id, "engineSound")) {
		if (!is_undefined(engineSound)) {
			if (audio_is_paused(engineSound)) audio_resume_sound(engineSound);
		}
	}
}

function save_state() {
	variable_struct_set(state, "speed", speed);
	variable_struct_set(state, "image_speed", image_speed);
	variable_struct_set(state, "enabled", enabled);
	variable_struct_set(state, "alarms", []);
	for (var i=0;i<array_length(alarm);i++) array_push(alarm_get(i));
}