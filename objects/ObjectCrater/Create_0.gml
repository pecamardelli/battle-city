/// @description Insert description here

sprite_index	= global.flames[irandom(array_length(global.flames)-1)];
craterSubImg	= irandom(sprite_get_number(SpriteExplosionCraters)-1);
craterScale		= random_range(1,2);
image_yscale	= 0.5;