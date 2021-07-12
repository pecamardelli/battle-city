/// @description Insert description here

framePadding	= 10;
frameWidth		= 10;
frameRadius		= 20;
frameColor		= make_color_rgb(128,0,0);

rowWidth	= 400;
row1width	= 212;
row2width	= 100;
separation	= 60;

var keyNames = [
	"up",
	"down",
	"left",
	"right",
	"fire1",
	"fire2",
	"fire3",
	"fire4",
	"accel",
	"brake",
	"reverse"
];

var buttonWidth		= 80;
var buttonHeight	= 35;

// Player 1 column
var xPos = room_width/4 + rowWidth/2 - buttonWidth;
var yPos = 200;

for (var i=0;i<11;i++) {
	var button		= instance_create_depth(xPos,yPos-buttonHeight/2,depth-1,ObjectButton);
	button.caption	= "SET";
	button.width	= buttonWidth;
	button.height	= buttonHeight;
	button.onClickAction	= config_key_window;
	button.keySet	= global.player1.keys;
	button.keyName	= keyNames[i];
	yPos			+= separation;
}

var checkBox = instance_create_depth(xPos+buttonWidth/2-20,yPos-buttonHeight/2,depth-1,ObjectCheckBox);

// Player 2 column
var xPos = room_width/2 + rowWidth/2 - buttonWidth;
var yPos = 200;

for (var i=0;i<11;i++) {
	var button		= instance_create_depth(xPos,yPos-buttonHeight/2,depth-1,ObjectButton);
	button.caption	= "SET";
	button.width	= buttonWidth;
	button.height	= buttonHeight;
	button.onClickAction	= config_key_window;
	button.keySet	= global.player2.keys;
	button.keyName	= keyNames[i];
	yPos			+= separation;
}

var checkBox = instance_create_depth(xPos+buttonWidth/2-20,yPos-buttonHeight/2,depth-1,ObjectCheckBox);
