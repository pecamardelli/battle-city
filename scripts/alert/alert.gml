// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function alert(message) {
	var windowX			= room_width/2;
	var windowY			= room_height/2;
	var windowWidth		= 500;
	var windowHeight	= 200;
	
	var window			= instance_create_depth(windowX,windowY,depth-1,ObjectWindow);
	window.width		= windowWidth;
	window.height		= windowHeight;
	window.caption		= message;
	window.captionX		= windowX;
	window.captionY		= windowY - windowHeight/6;
	
	var button		= instance_create_depth(windowX-40,windowY+windowHeight/4-25,depth-2,ObjectButton);
	button.caption	= "CLOSE";
	button.width	= 80;
	button.height	= 50;
	button.onClickAction	= close_window;
	button.parent	= window;
	button.level	= window.level;
	button.visible	= false;
}