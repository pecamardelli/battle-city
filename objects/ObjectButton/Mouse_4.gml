/// @description Insert description here

if (!enabled) return;
if (!is_undefined(onClickAction)) {
	if (is_array(onClickAction)) script_execute_ext(onClickAction[0],onClickAction,1);
	else script_execute(onClickAction);
}

audio_play_sound(SoundButtonClick,1,false);
