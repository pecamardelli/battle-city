// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function confirm(message, confirmAction) {
	var windowX			= room_width/2;
	var windowY			= room_height/2;
	var windowWidth		= 420;
	var windowHeight	= 240;
	
	var window			= instance_create_depth(windowX,windowY,depth-1,ObjectWindow);
	window.width		= windowWidth;
	window.height		= windowHeight;
	window.caption		= message;
	window.captionX		= windowX;
	window.captionY		= windowY - windowHeight/6;
	
	var buttonWidth		= 100;
	var buttonHeight	= 50;
	
	var confirmButton	= instance_create_depth(
		windowX - windowWidth/6 - buttonWidth/2,
		windowY + windowHeight/6 - buttonHeight/2,
		depth-2,
		ObjectButton
	);
	confirmButton.caption		= "CONFIRM";
	confirmButton.width			= buttonWidth;
	confirmButton.height		= buttonHeight;
	confirmButton.onClickAction	= confirmAction;
	confirmButton.parent		= window;
	confirmButton.level			= window.level;
	confirmButton.visible		= false;
	
	var cancelButton	= instance_create_depth(
		windowX + windowWidth/6 - buttonWidth/2,
		windowY + windowHeight/6 - buttonHeight/2,
		depth-2,
		ObjectButton
	);
	cancelButton.caption		= "CANCEL";
	cancelButton.width			= buttonWidth;
	cancelButton.height			= buttonHeight;
	cancelButton.onClickAction	= close_window;
	cancelButton.parent			= window;
	cancelButton.level			= window.level;
	cancelButton.visible		= false;
}