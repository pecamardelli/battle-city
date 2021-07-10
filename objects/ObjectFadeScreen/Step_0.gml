/// @description
image_alpha = approach(image_alpha,toAlpha,1/(room_speed*fadeTime));
if (image_alpha == toAlpha) instance_destroy();