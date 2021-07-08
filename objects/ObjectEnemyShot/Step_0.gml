/// @description Insert description here

if (
	x < -100 ||
	x > room_width + 100 ||
	y < -100 ||
	y > room_height + 100
) instance_destroy();

image_angle = direction;
if (exploding && image_index == image_number-1) instance_destroy();