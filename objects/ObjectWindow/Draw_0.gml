/// @description Insert description here

draw_roundrect_color_ext(x-currentWidth/2,y-currentHeight/2,x+currentWidth/2,y+currentHeight/2,10,10,color,color,false);
draw_roundrect_color_ext(x-currentWidth/2+frameWidth,y-currentHeight/2+frameWidth,x+currentWidth/2-frameWidth,y+currentHeight/2-frameWidth,10,10,c_black,c_black,false);

if (!is_undefined(caption) && currentWidth == width) {
	draw_set_font(font_arial_black_24);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(captionX,captionY,caption);
}