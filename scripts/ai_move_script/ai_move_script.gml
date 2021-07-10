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
		vehicle.turnSpeed * specMultiplier
	);
	
	//direction = point_direction()
	//var wallDistance = 80;
	
	//if (x < wallDistance) {
	//	if (direction < 90) {
	//		toDirection = irandom_range(180,270);
	//		turn = 1;
	//	}
	//	else if (direction > 90 && direction <= 180) {
	//		toDirection = irandom_range(270,360);
	//		turn = -1;
	//	}
	//	moveScript = ai_turn_around;
	//	return;
	//}
	
	//if (x > room_width - wallDistance) {
	//	if (direction > 270) {
	//		toDirection = irandom_range(90,180);
	//		turn = -1;
	//	}
	//	else if (direction > 180 && direction <= 270) {
	//		toDirection = irandom_range(0,90);
	//		turn = 1;
	//	}
	//	moveScript = ai_turn_around;
	//	return;
	//}
	
	//if (y < wallDistance) {
	//	if (direction < 90) {
	//		toDirection = irandom_range(180,270);
	//		turn = 1;
	//	}
	//	else if (direction > 270) {
	//		toDirection = irandom_range(90,180);
	//		turn = -1;
	//	}
	//	moveScript = ai_turn_around;
	//	return;
	//}
	
	//if (y > room_height - wallDistance) {
	//	if (direction > 90 && direction < 180) {
	//		toDirection = irandom_range(0,90);
	//		turn = -1;
	//	}
	//	else if (direction >= 180 && direction < 270) {
	//		toDirection = irandom_range(270,360);
	//		turn = 1;
	//	}
	//	moveScript = ai_turn_around;
	//	return;
	//}
}