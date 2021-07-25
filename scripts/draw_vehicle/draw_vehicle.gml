// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_vehicle () {
	if (!is_undefined(data.vehicle)) {
		draw_sprite_ext(sprite_index,image_index,x+10,y+10,image_xscale,image_yscale,direction,c_black,toAlpha-0.2);
		draw_self();
	
		if (!is_undefined(data.vehicle.machineGun)) {
			draw_sprite_ext(
				SpriteBulletCanon,
				0,
				x - machineGunOffset * sin(image_angle*pi/180),
				y - machineGunOffset * cos(image_angle*pi/180),
				image_xscale,
				image_yscale,
				direction,
				c_white,
				image_alpha
			);
			draw_sprite_ext(
				SpriteBulletCanon,
				0,
				x + machineGunOffset * sin(image_angle*pi/180),
				y + machineGunOffset * cos(image_angle*pi/180),
				image_xscale,
				image_yscale,
				direction,
				c_white,
				image_alpha
			);
		}
	
		draw_health_bar();
	}
}