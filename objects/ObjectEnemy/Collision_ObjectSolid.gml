/// @description Insert description here

if (x < other.x) {
	x -= hspeed+1;
	if (y < other.y) {
		y -= vspeed+1;
		if (image_angle < 225) image_angle -= vehicle.turnSpeed * specMultiplier;
		else image_angle += vehicle.turnSpeed * specMultiplier;
	}
	else {
		y += vspeed+1;
		if (image_angle < 315) image_angle -= vehicle.turnSpeed * specMultiplier;
		else image_angle += vehicle.turnSpeed * specMultiplier;
	}
}
else {
	x += hspeed+1;
	if (y < other.y) {
		y -= vspeed+1;
		if (image_angle < 135) image_angle -= vehicle.turnSpeed * specMultiplier;
		else image_angle += vehicle.turnSpeed * specMultiplier;
	}
	else {
		y += vspeed+1;
		if (image_angle < 45) image_angle -= vehicle.turnSpeed * specMultiplier;
		else image_angle += vehicle.turnSpeed * specMultiplier;
	}
}
		
