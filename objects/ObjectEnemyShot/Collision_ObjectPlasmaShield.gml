/// @description Insert description heresprite_index	= SpriteSparks;
if (!exploding) {
	sprite_index	= SpriteSparks;
	direction		= irandom(360);
	image_xscale	= random_range(0.2,1);
	image_yscale	= random_range(0.2,1);
	image_alpha		= random_range(0.6,1);
	hspeed = 0;
	vspeed = 0;
	exploding = true;
	
	audio_play_sound_at(
		SoundBulletOnShield,
		x,
		y,
		0,
		100,
		300,
		1,
		false,
		1
	);
}