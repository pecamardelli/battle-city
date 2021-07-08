// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function key_actions(){	
	if (keyUp) {
		var turnSpeed = vehicle.turnSpeed * specMultiplier * sign(cos(direction*pi/180));
		if(sin(direction*pi/180) != 1) direction += turnSpeed;
	}

	if (keyDown) {
		var turnSpeed = vehicle.turnSpeed * specMultiplier * -sign(cos(direction*pi/180));
		if(sin(direction*pi/180) != -1) direction += turnSpeed;
	}

	if (keyLeft) {
		var turnSpeed = vehicle.turnSpeed * specMultiplier * sign(sin(direction*pi/180));
		if(cos(direction*pi/180) != -1) direction += turnSpeed;
	}

	if (keyRight) {
		var turnSpeed = vehicle.turnSpeed * specMultiplier * -sign(sin(direction*pi/180));
		if(cos(direction*pi/180) != 1) direction += turnSpeed;
	}

	if (keyAccel) speed = approach(speed,vehicle.speed * specMultiplier,0.1);
	else if (keyReverse) speed = approach(speed,-vehicle.speed * specMultiplier,0.1);
	else speed = approach(speed,0,0.1);

	if (x < MIN_WALL_DISTANCE) {
		direction += vehicle.turnSpeed * specMultiplier * -sign(cos(direction*pi/180)) - 0.01;
		x = MIN_WALL_DISTANCE;
	}
	if (x > room_width - MIN_WALL_DISTANCE) {
		direction += vehicle.turnSpeed * specMultiplier * sign(cos(direction*pi/180)) + 0.01;
		x = room_width - MIN_WALL_DISTANCE;
	}
	if (y < MIN_WALL_DISTANCE) {
		direction += vehicle.turnSpeed * specMultiplier * sign(sin(direction*pi/180)) + 0.01;
		y = MIN_WALL_DISTANCE;
	}
	if (y > room_height - MIN_WALL_DISTANCE) {
		direction += vehicle.turnSpeed * specMultiplier * -sign(sin(direction*pi/180)) - 0.01;
		y = room_height - MIN_WALL_DISTANCE;
	}
	
	if (keyFire2 && !is_undefined(shotObject)) {
		var shots = 0;
		with (shotObject) if (creator == other.id) shots++;
		
		if (shots < vehicle.maxBurst && (current_time - shotTimeStamp) >= vehicle.burstInterval) {
			var angle = direction + random_range(-1,1);
			var shot = instance_create_depth(x,y,depth+1,shotObject);
			shot.creator		= id;
			shot.sprite_index	= vehicle.ammo.sprite;
			shot.speed			= vehicle.ammo.speed;
			shot.direction		= angle;
			shot.hp				= vehicle.ammo.hp * specMultiplier;
			shotTimeStamp		= current_time;
		}
	}
}