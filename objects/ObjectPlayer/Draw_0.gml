/// @description Insert description here

if (!is_undefined(vehicle)) {
	//if (sprite_index != -1) draw_self();
	draw_sprite_ext(sprite_index,image_index,x+10,y+10,image_xscale,image_yscale,image_angle,c_black,0.8);
	draw_sprite_ext(vehicle.sprite,0,x,y,image_xscale,image_yscale,image_angle,c_grey,1);
}