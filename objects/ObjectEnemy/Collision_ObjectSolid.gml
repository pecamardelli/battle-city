/// @description Insert description here

if (x < other.x) {
	x -= hspeed+1;
	if (y < other.y) {
		y -= vspeed+1;
		if (image_angle < 270) image_angle -= vehicle.turnSpeed;
		else image_angle += vehicle.turnSpeed;
	}
	else {
		y += vspeed+1;
		if (image_angle < 270) image_angle += vehicle.turnSpeed;
		else image_angle -= vehicle.turnSpeed;
	}
}
else {
	x += hspeed+1;
	if (y < other.y) {
		y -= vspeed+1;
		if (image_angle < 90) image_angle -= vehicle.turnSpeed;
		else image_angle += vehicle.turnSpeed;
	}
	else {
		y += vspeed+1;
		if (image_angle < 270) image_angle += vehicle.turnSpeed;
		else image_angle -= vehicle.turnSpeed;
	}
}
		
