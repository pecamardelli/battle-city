// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_player1(){
	var plasmaBall = instance_create_depth(room_width/2 - 150,room_height - 100,-100,ObjectPlasmaBall);
	plasmaBall.createScript = create_player;
	plasmaBall.scriptArgument = 1;
}