// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_enemy(enabled){
	var enemy				= instance_create_depth(x,y,-100,ObjectEnemy);
	enemy.enabled			= enabled;
	enemy.vehicle			= global.tanks[irandom(array_length(global.tanks)-1)];
	enemy.sprite_index		= enemy.vehicle.sprite;
	enemy.moveScript		= ai_move_script;
	enemy.direction			= 270;
	enemy.image_blend		= c_grey;
	enemy.hp				= enemy.vehicle.hp;
	return enemy;
}