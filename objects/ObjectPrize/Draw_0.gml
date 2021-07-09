/// @description Insert description here
draw_self();

if (!is_undefined(prize)) {
	draw_sprite_ext(
		prize.sprite,
		0,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		c_white,
		image_alpha
	);
}
