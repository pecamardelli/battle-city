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

var checkBox = instance_create_depth(xPos+buttonWidth/2-20,yPos-buttonHeight/2,depth-1,ObjectCheckBox); yPos += separation;
checkBox.checked = global.player1.input == INPUT_JOYSTICK;

function setPlayer1Input() {
	if (checked) {
		global.player1.input = INPUT_KEYBOARD;
		checked	= false;
		array_push(global.pads,global.player1.padIndex);
		global.player1.padIndex = undefined;
	}
	else  {
		if (array_length(global.pads) == 0) alert("No joysticks detected");
		else {
			global.player1.input	= INPUT_JOYSTICK;
			global.player1.padIndex = array_pop(global.pads);
			checked	= true;
		}
	}
};

checkBox.onClickAction = setPlayer1Input;

for (var i=0;i<11;i++) {
	var button		= instance_create_depth(xPos,yPos-buttonHeight/2,depth-1,ObjectButton);
	button.caption	= "SET";
	button.width	= buttonWidth;
	button.height	= buttonHeight;
	button.onClickAction	= config_key_window;
	button.player	= global.player1;
	button.keyName	= keyNames[i];
	yPos			+= separation;
}

// MOUSE AIM - To be implemented
// var checkBox = instance_create_depth(xPos+buttonWidth/2-20,yPos-buttonHeight/2,depth-1,ObjectCheckBox);

// Player 2 column
var xPos = room_width/2 + rowWidth/2 - buttonWidth;
var yPos = 200;

var checkBox = instance_create_depth(xPos+buttonWidth/2-20,yPos-buttonHeight/2,depth-1,ObjectCheckBox); yPos += separation;
checkBox.checked = global.player2.input == INPUT_JOYSTICK;

function setPlayer2Input () {
	if (checked) {
		global.player2.input = INPUT_KEYBOARD;
		checked	= false;
		array_push(global.pads,global.player2.padIndex);
		global.player2.padIndex = undefined;
	}
	else  {
		if (array_length(global.pads) == 0) alert("No joysticks detected");
		else {
			global.player2.input	= INPUT_JOYSTICK;
			global.player2.padIndex = array_pop(global.pads);
			checked	= true;
		}
	}
};

checkBox.onClickAction = setPlayer2Input;

for (var i=0;i<11;i++) {
	var button		= instance_create_depth(xPos,yPos-buttonHeight/2,depth-1,ObjectButton);
	button.caption	= "SET";
	button.width	= buttonWidth;
	button.height	= buttonHeight;
	button.onClickAction	= config_key_window;
	button.player	= global.player2;
	button.keyName	= keyNames[i];
	yPos			+= separation;
}

// MOUSE AIM - To be implemented
// var checkBox = instance_create_depth(xPos+buttonWidth/2-20,yPos-buttonHeight/2,depth-1,ObjectCheckBox);

// Misc
var xPos = room_width*0.75 + rowWidth/2 - 40;
var yPos = 200;

var checkBox = instance_create_depth(xPos+buttonWidth/2-20,yPos-buttonHeight/2,depth-1,ObjectCheckBox); yPos += separation;
checkBox.checked = global.friendlyFire;

function setFriendlyFire () {
	global.friendlyFire = !global.friendlyFire;
	checked = global.friendlyFire;
};

checkBox.onClickAction = setFriendlyFire;
