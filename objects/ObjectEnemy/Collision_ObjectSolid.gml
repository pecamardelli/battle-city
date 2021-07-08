/// @description Insert description here

if (x < other.x) {
	x -= hspeed+1;
	if (y < other.y) {
		y -= vspeed+1;
		if (direction < 225) direction -= vehicle.turnSpeed * specMultiplier;
		else direction += vehicle.turnSpeed * specMultiplier;
	}
	else {
		y += vspeed+1;
		if (direction < 315) direction -= vehicle.turnSpeed * specMultiplier;
		else direction += vehicle.turnSpeed * specMultiplier;
	}
}
else {
	x += hspeed+1;
	if (y < other.y) {
		y -= vspeed+1;
		if (direction < 135) direction -= vehicle.turnSpeed * specMultiplier;
		else direction += vehicle.turnSpeed * specMultiplier;
	}
	else {
		y += vspeed+1;
		if (direction < 45) direction -= vehicle.turnSpeed * specMultiplier;
		else direction += vehicle.turnSpeed * specMultiplier;
	}
}
		
