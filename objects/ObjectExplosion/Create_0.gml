/// @description Insert description here

sprite_index	= global.explosions[irandom(array_length(global.explosions)-1)];
scale			= random_range(0.6,1);
image_xscale	= scale;
image_yscale	= scale * random_range(0.6,1);

instance_create_depth(x,y+20,-1,ObjectCrater);
flames			= undefined;

var explosionSounds = global.sounds.explosions.big;

audio_play_sound_at(
	explosionSounds[irandom(array_length(explosionSounds)-1)],
	x,
	y,
	0,
	100,
	300,
	1,
	false,
	1
);