// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_player(playerNumber){
	var player = instance_create_depth(x,y,-100,ObjectPlayer);
	
	if (playerNumber == 1) {
		player.data   = global.player1;
		player.number = 1;
	}
	else {
		player.data   = global.player2;
		player.number = 2;
	}
	
	player.direction	= 90;
	player.vehicle		= player.data.vehicle;
	player.sprite_index	= player.vehicle.sprite;
	player.hp			= player.vehicle.hp;
	
	return player;
}