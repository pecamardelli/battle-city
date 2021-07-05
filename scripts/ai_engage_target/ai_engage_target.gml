// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_engage_target(){
	var targetDirection = point_direction(x,y,nearestTarget.x,nearestTarget.y);
	if (targetDirection <= 90) targetDirection += 270;
	else targetDirection -= 90;
	
	if (abs(angle_difference(image_angle, targetDirection)) < 0.5) image_angle = targetDirection;
	else image_angle = approach(image_angle, targetDirection, vehicle.turnSpeed);
	
	if (abs(angle_difference(image_angle, targetDirection)) < 10) keyFire2 = true;
}