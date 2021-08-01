// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_move_script(){
	accel = true;
	
	var pointToGoDistance	= point_distance(x,y,pointToGo.xCoord,pointToGo.yCoord);
	var pointToGoDirection	= point_direction(x,y,pointToGo.xCoord,pointToGo.yCoord)
	if (pointToGoDistance < 10) pointToGo = get_random_point();
	
	direction = approach(
		direction,
		pointToGoDirection,
		data.vehicle.turnSpeed * specMultiplier
	);
}