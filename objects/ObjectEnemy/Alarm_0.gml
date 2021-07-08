/// @description Insert description here
if (enabled) {
	if (point_distance(lastX,lastY,x,y) < 30) {
		toImageAngle = irandom_range(direction+70,direction+110);
		moveScript = ai_turn_around;
	}
	lastX		= x;
	lastY		= y;
}
alarm_set(0,room_speed*3);