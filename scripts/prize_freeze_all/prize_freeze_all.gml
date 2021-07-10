// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_freeze_all(){
	global.disableEnemies = true;
	
	with (ObjectBattleField) {
		alarm_set(11, room_speed*FREEZE_TIME);
		customScript = enable_enemies;
	}
}

function enable_enemies() {
	global.disableEnemies = false;
	with (ObjectEnemy) enabled = true;
}