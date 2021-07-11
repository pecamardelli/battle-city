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

var xPos = room_width*0.25;
var yPos = 100;
var separation = 50;

draw_sprite_ext(SpritePlayer1Keys,0,xPos,100,1,1,0,c_white,1); yPos += 100;

draw_set_halign(fa_left);
draw_set_font(font_arial_black_48);
draw_set_color(c_gray);

draw_sprite_ext(SpriteUp,0,xPos-150,yPos,1,1,0,c_white,1); yPos += separation;
draw_sprite_ext(SpriteDown,0,xPos-150,yPos,1,1,0,c_white,1); yPos += separation;
draw_sprite_ext(SpriteLeft,0,xPos-150,yPos,1,1,0,c_white,1); yPos += separation;
draw_sprite_ext(SpriteRight,0,xPos-150,yPos,1,1,0,c_white,1); yPos += separation;

draw_sprite_ext(SpritePlayer2Keys,0,room_width*0.5,100,1,1,0,c_white,1);
