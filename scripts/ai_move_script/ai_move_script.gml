// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ai_move_script(){
	keyAccel = true;
	
	var wallDistance = 80;
	
	if (x < wallDistance) {
		if (image_angle < 90) {
			toImageAngle = irandom_range(270,360);
			turn = 1;
		}
		else if (image_angle > 90 && image_angle <= 180) {
			toImageAngle = irandom_range(180,270);
			turn = -1;
		}
		moveScript = ai_turn_around;
	}
	
	if (x > room_width - wallDistance) {
		if (image_angle > 270) {
			toImageAngle = irandom_range(0,90);
			turn = -1;
		}
		else if (image_angle > 180 && image_angle <= 270) {
			toImageAngle = irandom_range(90,180);
			turn = 1;
		}
		moveScript = ai_turn_around;
	}
	
	if (y < wallDistance) {
		if (image_angle < 90) {
			toImageAngle = irandom_range(90,180);
			turn = 1;
		}
		else if (image_angle > 270) {
			toImageAngle = irandom_range(180,270);
			turn = -1;
		}
		moveScript = ai_turn_around;
	}
	
	if (y > room_height - wallDistance) {
		if (image_angle > 90 && image_angle < 180) {
			toImageAngle = irandom_range(0,90);
			turn = -1;
		}
		else if (image_angle >= 180 && image_angle < 270) {
			toImageAngle = irandom_range(270,360);
			turn = 1;
		}
		moveScript = ai_turn_around;
	}
}