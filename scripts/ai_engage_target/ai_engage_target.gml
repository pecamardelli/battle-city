// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_engage_target(){
	var targetDirection = point_direction(x,y,nearestTarget.x,nearestTarget.y);
	
	direction = approach(direction, targetDirection, vehicle.turnSpeed * specMultiplier);
	
	if (abs(angle_difference(direction, targetDirection)) < 10) keyFire2 = true;
}