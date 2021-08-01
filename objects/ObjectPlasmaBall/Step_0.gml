/// @description Insert description here

if (enabled) {
	image_xscale	= approach(image_xscale, toScale, 0.05);
	image_yscale	= approach(image_yscale, toScale, 0.05);
	image_alpha		= approach(image_alpha, toScale, 0.05);
	direction		+= 1;

	if ((image_xscale == 1 || image_yscale == 1) && is_undefined(object)) {
		object				= createScript(scriptArgument);
		object.invulnerable = true;
		alarm_set(0,room_speed*2);
	}

	if (image_xscale == 0 || image_yscale == 0) instance_destroy();
}