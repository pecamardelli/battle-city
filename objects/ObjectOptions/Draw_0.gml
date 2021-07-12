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
	frameRadius*0.3,
	frameRadius*0.3,
	c_black,
	c_black,
	false
);

var xPos = room_width/4 - rowWidth/2;
var yPos = 100;

draw_set_font(font_arial_black_24);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_gray);

draw_sprite_ext(SpritePlayer1Keys,0,room_width/4,100,1,1,0,c_white,1); yPos += 100;

draw_sprite_ext(SpriteUp,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.up)); yPos += separation;
draw_sprite_ext(SpriteDown,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.down)); yPos += separation;
draw_sprite_ext(SpriteLeft,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.left)); yPos += separation;
draw_sprite_ext(SpriteRight,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.right)); yPos += separation;
draw_sprite_ext(SpriteFire1,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.fire1)); yPos += separation;
draw_sprite_ext(SpriteFire2,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.fire2)); yPos += separation;
draw_sprite_ext(SpriteFire3,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.fire3)); yPos += separation;
draw_sprite_ext(SpriteFire4,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.fire4)); yPos += separation;
draw_sprite_ext(SpriteAccel,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.accel)); yPos += separation;
draw_sprite_ext(SpriteBrake,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.brake)); yPos += separation;
draw_sprite_ext(SpriteReverse,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.reverse)); yPos += separation;

draw_sprite_ext(SpriteMouseAim,0,xPos,yPos,1,1,0,c_white,1); yPos += separation;

var xPos = room_width/2 - rowWidth/2;
var yPos = 100;
draw_sprite_ext(SpritePlayer2Keys,0,room_width*0.5,100,1,1,0,c_white,1); yPos += 100;

draw_sprite_ext(SpriteUp,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.up)); yPos += separation;
draw_sprite_ext(SpriteDown,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.down)); yPos += separation;
draw_sprite_ext(SpriteLeft,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.left)); yPos += separation;
draw_sprite_ext(SpriteRight,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.right)); yPos += separation;
draw_sprite_ext(SpriteFire1,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.fire1)); yPos += separation;
draw_sprite_ext(SpriteFire2,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.fire2)); yPos += separation;
draw_sprite_ext(SpriteFire3,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.fire3)); yPos += separation;
draw_sprite_ext(SpriteFire4,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.fire4)); yPos += separation;
draw_sprite_ext(SpriteAccel,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.accel)); yPos += separation;
draw_sprite_ext(SpriteBrake,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.brake)); yPos += separation;
draw_sprite_ext(SpriteReverse,0,xPos,yPos,1,1,0,c_white,1);
draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.reverse)); yPos += separation;

draw_sprite_ext(SpriteMouseAim,0,xPos,yPos,1,1,0,c_white,1); yPos += separation;
