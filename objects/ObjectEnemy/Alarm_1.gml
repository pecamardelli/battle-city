/// @description Insert description here

if (enabled) {
	if (lastAngle > image_angle - 5 && lastAngle < image_angle + 5) {
		toImageAngle = irandom_range(image_angle+70,image_angle+110);
		moveScript = ai_turn_around;
	}
	lastAngle	= image_angle;
}
alarm_set(1,room_speed*5);