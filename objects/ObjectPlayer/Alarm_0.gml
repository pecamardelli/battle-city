/// @description Dirt sounds

var dirtSounds = global.sounds.environment.dirt;

audio_play_sound_at(
	dirtSounds[irandom(array_length(dirtSounds)-1)],
	x,
	y,
	0,
	100,
	300,
	1,
	false,
	1
);

// Dirt sounds
if (speed > 0) alarm_set(0,5);