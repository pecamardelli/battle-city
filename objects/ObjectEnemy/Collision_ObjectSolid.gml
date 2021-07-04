/// @description Insert description here

//if (x < other.x) x += sign(x-other.x)*hspeed-1;
//else x -= sign(x-other.x)*hspeed+1;
		
//if(y < other.y) y += sign(y-other.y)*vspeed-1;
//else y -= sign(y-other.y)*vspeed+1;

if (x < other.x) {
	x += sign(x-other.x) * hspeed-1;
	if (y < other.y) image_angle -= vehicle.turnSpeed;
	else image_angle += vehicle.turnSpeed;
}
else {
	x -= sign(x-other.x)*hspeed+1;
	if (y < other.y && image_angle <= 90) image_angle -= vehicle.turnSpeed;
	else image_angle += vehicle.turnSpeed;
}
		
if(y < other.y) y += sign(y-other.y)*vspeed-1;
else y -= sign(y-other.y)*vspeed+1;