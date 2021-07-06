// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function key_actions(){	
	if (keyUp) {
		if(abs(0-image_angle) < 180) var turnSpeed = vehicle.turnSpeed * specMultiplier;
		else var turnSpeed = vehicle.turnSpeed * specMultiplier * -1;
		image_angle	= approach(image_angle,0,turnSpeed);
	}

	if (keyDown) {
		if(abs(180-image_angle) < 180) var turnSpeed = vehicle.turnSpeed * specMultiplier;
		else var turnSpeed = vehicle.turnSpeed * specMultiplier * -1;
		image_angle	= approach(image_angle,180,turnSpeed);
	}

	if (keyLeft) {
		if(abs(90-image_angle) < 180) var turnSpeed = vehicle.turnSpeed * specMultiplier;
		else var turnSpeed = vehicle.turnSpeed * specMultiplier * -1;
		image_angle	= approach(image_angle,90,turnSpeed);
	}

	if (keyRight) {
		if(abs(270-image_angle) < 180) var turnSpeed = vehicle.turnSpeed * specMultiplier;
		else var turnSpeed = vehicle.turnSpeed * specMultiplier * -1;
		image_angle	= approach(image_angle,270,turnSpeed);
	}

	if (keyAccel) _speed = approach(_speed,vehicle.speed * specMultiplier,0.1);
	else _speed = approach(_speed,0,0.1);

	vspeed = _speed * -cos(image_angle*pi/180);
	hspeed = _speed * -sin(image_angle*pi/180);

	if (image_angle > 360) image_angle = 0;
	if (image_angle < 0) image_angle = 360;

	if (x < 30) x = 30;
	if (x > room_width - 30) x = room_width - 30;
	if (y < 30) y = 30;
	if (y > room_height - 30) y = room_height - 30;
	
	if (keyFire2 && !is_undefined(shotObject)) {
		var shots = 0;
		with (shotObject) if (creator == other.id) shots++;
		
		if (shots < vehicle.maxBurst && (current_time - shotTimeStamp) >= vehicle.burstInterval) {
			var angle = image_angle + random_range(-1,1);
			var shot = instance_create_depth(x,y,depth+1,shotObject);
			shot.creator		= id;
			shot.sprite_index	= vehicle.ammo.sprite;
			shot.vspeed			= vehicle.ammo.speed * -cos(angle*pi/180);
			shot.hspeed			= vehicle.ammo.speed * -sin(angle*pi/180);
			shot.image_angle	= angle;
			shot.hp				= vehicle.ammo.hp * specMultiplier;
			shotTimeStamp		= current_time;
		}
	}
}