/// @description Insert description here

if (enabled) {
	if (!is_undefined(prize.script)) {
		with (other) {
			script_execute(other.prize.script);
			audio_play_sound(other.prize.sound,1,false);
			data.stats.totalPrizes++;
		}
	}

	instance_destroy();
}
