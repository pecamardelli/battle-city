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

draw_sprite_ext(SpriteUseJoystick,0,xPos,yPos,1,1,0,c_white,1); yPos += separation;

if (global.player1.input == INPUT_KEYBOARD) {
	draw_sprite_ext(SpriteUp,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.up)); yPos += separation;
	draw_sprite_ext(SpriteDown,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.down)); yPos += separation;
	draw_sprite_ext(SpriteLeft,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.left)); yPos += separation;
	draw_sprite_ext(SpriteRight,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.right)); yPos += separation;
	draw_sprite_ext(SpriteFire1,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.fire1)); yPos += separation;
	draw_sprite_ext(SpriteFire2,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.fire2)); yPos += separation;
	draw_sprite_ext(SpriteFire3,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.fire3)); yPos += separation;
	draw_sprite_ext(SpriteFire4,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.fire4)); yPos += separation;
	draw_sprite_ext(SpriteAccel,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.accel)); yPos += separation;
	draw_sprite_ext(SpriteBrake,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.brake)); yPos += separation;
	draw_sprite_ext(SpriteReverse,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.reverse)); yPos += separation;
}
else {
	draw_sprite_ext(SpriteUp,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.up],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteDown,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.down],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteLeft,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.left],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteRight,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.right],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteFire1,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.fire1],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteFire2,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.fire2],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteFire3,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.fire3],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteFire4,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.fire4],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteAccel,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.accel],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteBrake,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.brake],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteReverse,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player1.keys.pad.reverse],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
}

// MOUSE AIM - To be implemented
//draw_sprite_ext(SpriteMouseAim,0,xPos,yPos,1,1,0,c_white,1); yPos += separation;

var xPos = room_width/2 - rowWidth/2;
var yPos = 100;
draw_sprite_ext(SpritePlayer2Keys,0,room_width*0.5,100,1,1,0,c_white,1); yPos += 100;

draw_sprite_ext(SpriteUseJoystick,0,xPos,yPos,1,1,0,c_white,1); yPos += separation;

if (global.player2.input == INPUT_KEYBOARD) {
	draw_sprite_ext(SpriteUp,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.keyboard.up)); yPos += separation;
	draw_sprite_ext(SpriteDown,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.keyboard.down)); yPos += separation;
	draw_sprite_ext(SpriteLeft,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.keyboard.left)); yPos += separation;
	draw_sprite_ext(SpriteRight,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.keyboard.right)); yPos += separation;
	draw_sprite_ext(SpriteFire1,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.keyboard.fire1)); yPos += separation;
	draw_sprite_ext(SpriteFire2,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.keyboard.fire2)); yPos += separation;
	draw_sprite_ext(SpriteFire3,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.keyboard.fire3)); yPos += separation;
	draw_sprite_ext(SpriteFire4,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player2.keys.keyboard.fire4)); yPos += separation;
	draw_sprite_ext(SpriteAccel,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.accel)); yPos += separation;
	draw_sprite_ext(SpriteBrake,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.brake)); yPos += separation;
	draw_sprite_ext(SpriteReverse,0,xPos,yPos,1,1,0,c_white,1);
	draw_text(xPos+row1width+row2width/2,yPos,ansi_char(global.player1.keys.keyboard.reverse)); yPos += separation;
}
else {
	draw_sprite_ext(SpriteUp,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.up],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteDown,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.down],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteLeft,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.left],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteRight,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.right],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteFire1,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.fire1],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteFire2,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.fire2],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteFire3,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.fire3],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteFire4,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.fire4],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteAccel,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.accel],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteBrake,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.brake],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
	draw_sprite_ext(SpriteReverse,0,xPos,yPos,1,1,0,c_white,1);
	draw_sprite_ext(global.padButtons[? global.player2.keys.pad.reverse],0,xPos+row1width+row2width/2,yPos,1,1,0,c_white,1); yPos += separation;
}

// MOUSE AIM - To be implemented
//draw_sprite_ext(SpriteMouseAim,0,xPos,yPos,1,1,0,c_white,1); yPos += separation;

// Misc
var xPos = room_width*0.75 - rowWidth/2;
var yPos = 200;

draw_sprite_ext(SpriteFriendlyFire,0,xPos,yPos,1,1,0,c_white,1); yPos += separation;