/// @description Insert description here

framePadding	= 10;
frameWidth		= 10;
frameRadius		= 20;
frameColor		= make_color_rgb(128,0,0);

var xPos = room_width*0.25+150;
var yPos = 200;
var separation = 50;

changeUpKeyButton = instance_create_depth(xPos,yPos,depth-1,ObjectButton);
changeUpKeyButton.caption	= "SET";
changeUpKeyButton.width		= 80;
changeUpKeyButton.height	= 40;