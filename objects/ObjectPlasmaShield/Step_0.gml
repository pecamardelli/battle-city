/// @description Insert description here

if (!is_undefined(stickTo)) {
	x = stickTo.x;
	y = stickTo.y;
}

image_xscale	= approach(image_xscale, toScale, 0.05);
image_yscale	= approach(image_yscale, toScale, 0.05);
image_alpha		= approach(image_alpha, toScale, 0.05);
direction		+= 1;

if (image_xscale == 0 || image_yscale == 0) instance_destroy();