/// @description Insert description here
sprite_index	= SpriteExplosionCraters;
image_index		= irandom(sprite_get_number(SpriteExplosionCraters)-1);
image_xscale	= random_range(1.2,2);
image_yscale	= image_xscale;
image_alpha		= random_range(0.4,0.6);
image_blend		= make_color_rgb(22,22,22);
