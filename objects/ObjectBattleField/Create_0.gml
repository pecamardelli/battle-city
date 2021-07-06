/// @description Insert description here
sprite_index	= SpriteGround;
image_index		= irandom(sprite_get_number(sprite_index)-1);
image_alpha		= 0.3;
image_blend		= c_grey;

alarm_set(0,3);