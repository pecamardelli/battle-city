/// @description Insert description here

if (x < other.x) {
	x -= speed+1;
	if (y < other.y) {
		y -= vspeed+1;
		if (direction < 225) direction -= vehicle.turnSpeed * specMultiplier;
		else direction += vehicle.turnSpeed * specMultiplier;
	}
	else {
		y += speed+1;
		if (direction < 315) direction -= vehicle.turnSpeed * specMultiplier;
		else direction += vehicle.turnSpeed * specMultiplier;
	}
}
else {
	x += speed+1;
	if (y < other.y) {
		y -= speed+1;
		if (direction < 135) direction -= vehicle.turnSpeed * specMultiplier;
		else direction += vehicle.turnSpeed * specMultiplier;
	}
	else {
		y += speed+1;
		if (direction < 45) direction -= vehicle.turnSpeed * specMultiplier;
		else direction += vehicle.turnSpeed * specMultiplier;
	}
}
		
