/// @description Insert description here
if (enabled) {
	if (point_distance(lastX,lastY,x,y) < 30 || (lastAngle > image_angle - 5 && lastAngle < image_angle + 5)) {
		toImageAngle = irandom_range(image_angle+70,image_angle+110);
		moveScript = ai_turn_around;
	}
	lastX		= x;
	lastY		= y;
}
alarm_set(0,room_speed*3);