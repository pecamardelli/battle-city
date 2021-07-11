/// @description Insert description here

if (!enabled) return;

if (position_meeting(mouse_x,mouse_y,id)) {
	image_alpha  = approach(image_alpha,1,0.02);
	amount = approach(amount,1,0.05);
}
else {
	image_alpha = approach(image_alpha,0.7,0.02);
	amount = approach(amount,0,0.05);
}

color = merge_color(
	make_color_rgb(80,0,0),
	make_color_rgb(128,0,0),
	amount
);

image_xscale = approach(image_xscale,width,5);
image_yscale = approach(image_yscale,height,5);