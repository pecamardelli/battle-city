/// @description Insert description here

if (hasPrize) {
	var prize = instance_create_depth(
		random_range(MIN_WALL_DISTANCE,room_width - MIN_WALL_DISTANCE),
		random_range(MIN_WALL_DISTANCE,room_height - MIN_WALL_DISTANCE),
		-20,
		ObjectPrize
	);
	
	prize.prize = global.prizes[irandom(array_length(global.prizes)-1)];
}

audio_emitter_free(soundEmitter);