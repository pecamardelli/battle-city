// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_engage_target(){
	var targetDirection = point_direction(x,y,nearestTarget.x,nearestTarget.y);
	
	// When the player's direction is in the first quadrant from the enemy, it fails to aim
	// because it tries to turn clockwise and falls out the engage zone.
	// This fixes that behaviour by virtually placing the player on a grater angle than the enemy.
	while (direction - targetDirection > 180) targetDirection += 360;
	
	direction = approach(direction, targetDirection, data.vehicle.turnSpeed * specMultiplier);
	
	if (abs(angle_difference(direction, targetDirection)) < 10) fire1 = true;
}