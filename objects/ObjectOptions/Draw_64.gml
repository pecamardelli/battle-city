/// @description Insert description here

draw_roundrect_color_ext(
	framePadding,
	framePadding,
	room_width - framePadding,
	room_height - framePadding,
	frameRadius,
	frameRadius,
	frameColor,
	frameColor,
	false
);

draw_roundrect_color_ext(
	framePadding + frameWidth,
	framePadding + frameWidth,
	room_width - framePadding - frameWidth,
	room_height - framePadding - frameWidth,
	frameRadius,
	frameRadius,
	c_black,
	c_black,
	false
);