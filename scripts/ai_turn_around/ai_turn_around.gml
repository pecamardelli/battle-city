// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_turn_around(){
	keyAccel = true;
	image_angle = approach(image_angle,toImageAngle,vehicle.turnSpeed);
	if (image_angle >= toImageAngle) moveScript = ai_move_script;
}