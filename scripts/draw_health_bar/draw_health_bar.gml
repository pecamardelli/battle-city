// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_health_bar(){
	if (hp > 0) {
		draw_roundrect_color_ext(
			x - 21,
			y - 6,
			x + 21,
			y + 6,
			5,
			5,
			c_black,
			c_black,
			false
		);
		draw_roundrect_color_ext(
			x - 20,
			y - 5,
			x - 20 + hp * 40 / vehicle.hp,
			y + 5,
			5,
			5,
			c_green,
			c_green,
			false
		);
	}
}