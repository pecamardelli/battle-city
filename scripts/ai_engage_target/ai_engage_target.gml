// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_engage_target(){
	targetDirection = point_direction(x,y,nearestTarget.x,nearestTarget.y);
	image_angle = approach(image_angle, targetDirection-90,vehicle.turnSpeed);
	keyFire2 = true;
}