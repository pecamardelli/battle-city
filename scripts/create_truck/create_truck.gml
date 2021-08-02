// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_truck() {
	var truckIndex			= irandom(array_length(global.trucks)-1);
	var enemy				= instance_create_depth(x,y,-100,ObjectEnemyTruck);
	enemy.enabled			= false;
	enemy.data.vehicle		= global.trucks[truckIndex];
	enemy.sprite_index		= enemy.data.vehicle.sprite;
	enemy.moveScript		= ai_move_script;
	enemy.direction			= 270;
	enemy.cannonDirection	= enemy.direction;
	enemy.image_blend		= c_grey;
	enemy.hp				= enemy.data.vehicle.hp;
	return enemy;
}