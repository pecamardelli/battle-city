/// @description Insert description here

if (!collided) {
	var collisionSounds = global.sounds.environment.collision.bulletOnConcrete;
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
	collided = true;
}