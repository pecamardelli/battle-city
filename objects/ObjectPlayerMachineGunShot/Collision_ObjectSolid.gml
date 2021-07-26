/// @description Insert description here

if (!exploding && creator != other.id) {
	hit = other.id;
	sprite_index = SpriteSparks;
	direction = irandom(360);
	//image_xscale = random_range(0.2,1);
	//image_yscale = random_range(0.2,1);
	image_alpha	= random_range(0.6,1);
	hspeed = 0;
	vspeed = 0;
	exploding = true;
	
	switch (other.material) {
		case MATERIAL_CONCRETE:
			var collisionSounds = global.sounds.environment.collision.bulletOnConcrete;
			break;
		case MATERIAL_METAL:
			var collisionSounds = global.sounds.environment.collision.bulletOnMetal;
			break;
	}
	
	audio_play_sound_at(
		collisionSounds[irandom(array_length(collisionSounds)-1)],
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
