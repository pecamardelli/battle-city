// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function key_actions(){	
	if (up) {
		var turnSpeed = vehicle.turnSpeed * specMultiplier * sign(cos(direction*pi/180));
		if(sin(direction*pi/180) != 1) direction += turnSpeed;
	}

	if (down) {
		var turnSpeed = vehicle.turnSpeed * specMultiplier * -sign(cos(direction*pi/180));
		if(sin(direction*pi/180) != -1) direction += turnSpeed;
	}

	if (left) {
		var turnSpeed = vehicle.turnSpeed * specMultiplier * sign(sin(direction*pi/180));
		if(cos(direction*pi/180) != -1) direction += turnSpeed;
	}

	if (right) {
		var turnSpeed = vehicle.turnSpeed * specMultiplier * -sign(sin(direction*pi/180));
		if(cos(direction*pi/180) != 1) direction += turnSpeed;
	}

	if (accel) speed = approach(speed,vehicle.speed * specMultiplier,0.1);
	else if (reverse) speed = approach(speed,-vehicle.speed * specMultiplier,0.1);
	else speed = approach(speed,0,0.1);
	
	if (fire2 && !is_undefined(shotObject)) {
		var shots = 0;
		with (shotObject) if (creator == other.id) shots++;
		
		if (shots < vehicle.maxBurst && (current_time - shotTimeStamp) >= vehicle.burstInterval) {
			var angle = direction + random_range(-1,1);
			var shot = instance_create_depth(x,y,depth+1,shotObject);
			shot.image_xscale	= vehicle.ammo.xScale;
			shot.image_yscale	= vehicle.ammo.yScale;
			shot.creator		= id;
			shot.sprite_index	= vehicle.ammo.sprite;
			shot.speed			= vehicle.ammo.speed;
			shot.direction		= angle;
			shot.hp				= vehicle.ammo.hp * specMultiplier;
			shotTimeStamp		= current_time;
		}
		
		if (!is_undefined(machineGun)) {
			var machineGunShots = 0;
			with (ObjectPlayerMachineGunShot) if (creator == other.id) machineGunShots++;
		
			if (machineGunShots < machineGun.maxBurst && (current_time - machineGunShotTimeStamp) >= machineGun.burstInterval) {
				var angle = direction + random_range(-1,1);
				var machineGunShot = instance_create_depth(x,y,depth+1,ObjectPlayerMachineGunShot);
				machineGunShot.x			= x - machineGunOffset * sin(image_angle*pi/180);
				machineGunShot.y			= y - machineGunOffset * cos(image_angle*pi/180);
				machineGunShot.image_xscale	= machineGun.ammo.xScale;
				machineGunShot.image_yscale	= machineGun.ammo.yScale;
				machineGunShot.creator		= id;
				machineGunShot.sprite_index	= machineGun.ammo.sprite;
				machineGunShot.speed		= machineGun.ammo.speed;
				machineGunShot.direction	= angle;
				machineGunShot.hp			= machineGun.ammo.hp;
				
				
				var machineGunShot = instance_create_depth(x,y,depth+1,ObjectPlayerMachineGunShot);
				machineGunShot.x			= x + machineGunOffset * sin(image_angle*pi/180);
				machineGunShot.y			= y + machineGunOffset * cos(image_angle*pi/180);
				machineGunShot.image_xscale	= machineGun.ammo.xScale;
				machineGunShot.image_yscale	= machineGun.ammo.yScale;
				machineGunShot.creator		= id;
				machineGunShot.sprite_index	= machineGun.ammo.sprite;
				machineGunShot.speed		= machineGun.ammo.speed;
				machineGunShot.direction	= angle;
				machineGunShot.hp			= machineGun.ammo.hp;
				machineGunShotTimeStamp		= current_time;
				
				machineGunShotTimeStamp		= current_time;
			}
		}
	}
}