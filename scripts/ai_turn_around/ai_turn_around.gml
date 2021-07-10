// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_turn_around(){
	accel = true;
	direction = approach(direction,toDirection,vehicle.turnSpeed * specMultiplier);
	if (direction >= toDirection) {
		moveScript = ai_move_script;
		pointToGo = get_random_point();
	}
}