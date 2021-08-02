// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_enemy(enabled){
	var enemy				= instance_create_depth(x,y,-100,ObjectEnemyTank);
	enemy.enabled			= enabled;
	
	var tanksToKill			= global.stageNumber + STAGE_TANK_NUMBER;
	var tanksKilled			= tanksToKill - ObjectBattleField.tankNumber;
	var tankKillRatio		= tanksKilled/tanksToKill;
	
	if (random(1) > 0.9 && tankKillRatio > 0.8) var tankIndex = floor((array_length(global.tanks) - 1)*irandom_range(tankKillRatio, 1));
	else var tankIndex = floor(global.stageNumber/10) + floor(tanksKilled/10);
	
	// Prevent tankIndex to fall outside the tank array
	if (tankIndex >= array_length(global.tanks)) tankIndex = array_length(global.tanks) - 1;
	enemy.data.vehicle		= global.tanks[tankIndex];
	enemy.sprite_index		= enemy.data.vehicle.sprite;
	enemy.moveScript		= ai_move_script;
	enemy.direction			= 270;
	enemy.cannonDirection	= enemy.direction;
	enemy.image_blend		= c_grey;
	enemy.hp				= enemy.data.vehicle.hp;
	return enemy;
}