// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_move_script(){
	keyAccel = true;
	
	var wallDistance = 80;
	
	if (x < wallDistance) toImageAngle = irandom_range(190,350); moveScript = ai_turn_around;
	if (x > room_width - wallDistance) toImageAngle = irandom_range(10,170); moveScript = ai_turn_around;
	if (y < wallDistance) toImageAngle = irandom_range(100,260); moveScript = ai_turn_around;
	if (y > room_height - wallDistance) toImageAngle = irandom_range(-80,80); moveScript = ai_turn_around;
	
	var nearestRock			= instance_nearest(x,y,ObjectRock);
	var nearestRockDistance = distance_to_object(nearestRock);
	var rockDirection		= point_direction(x,y,nearestRock.x,nearestRock.y);
	if (nearestRockDistance < 40) {
		
		if (rockDirection < 0) keyLeft = true;
		else keyRight = true;
	}
}