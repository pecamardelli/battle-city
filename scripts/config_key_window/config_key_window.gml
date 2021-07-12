// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function config_key_window(){
	var windowX			= room_width/2;
	var windowY			= room_height/2;
	var windowWidth		= 400;
	var windowHeight	= 100;
	
	var window			= instance_create_depth(windowX,windowY,depth-1,ObjectWindow);
	window.width		= windowWidth;
	window.height		= windowHeight;
	window.caption		= "ENTER " + string_upper(keyName) + " KEY";
	window.playerKeySet	= keySet;
	window.keyName		= keyName
}