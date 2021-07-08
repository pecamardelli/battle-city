// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_turn_around(){
	keyAccel = true;
	direction = approach(direction,toImageAngle,vehicle.turnSpeed * turn);
	if (
		sin(direction*pi/180) == sin(toImageAngle*pi/180) &&
		cos(direction*pi/180) == cos(toImageAngle*pi/180)
	) moveScript = ai_move_script;
}