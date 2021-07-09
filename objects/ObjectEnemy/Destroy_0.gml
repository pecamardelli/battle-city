/// @description Insert description here

if (hasPrize) {
	var prize = instance_create_depth(
		random_range(MIN_WALL_DISTANCE,room_width - MIN_WALL_DISTANCE),
		random_range(MIN_WALL_DISTANCE,room_height - MIN_WALL_DISTANCE),
		-20,
		ObjectPrize
	);
	
	prize.prize = {
		sprite: SpriteStar,
		color: c_white,
		script: prize_star
	};
}