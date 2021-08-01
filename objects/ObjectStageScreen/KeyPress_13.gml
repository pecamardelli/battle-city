/// @description Insert description here

if (alpha >= 1 && is_undefined(startStageSound)) {
	startStageSound = audio_play_sound(SoundGameStartMusic,1,false);
	alarm_set(0,room_speed*2);
}
