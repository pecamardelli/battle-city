// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function key_actions() {
	if (up) {
		turnSpeed = approach(turnSpeed,data.vehicle.turnSpeed * specMultiplier * sign(cos(direction*pi/180)),MOVE_ACCEL_STEP);
		if(sin(direction*pi/180) >= MOVE_ANGLE_THRESHOLD) {
			turnSpeed = 0;
			direction = 90;
		}
	}
	else if (down) {
		turnSpeed = approach(turnSpeed,data.vehicle.turnSpeed * specMultiplier * -sign(cos(direction*pi/180)),MOVE_ACCEL_STEP);
		if(sin(direction*pi/180) <= -MOVE_ANGLE_THRESHOLD) {
			turnSpeed = 0;
			direction = 270;
		}
	}
	else if (left) {
		turnSpeed = approach(turnSpeed,data.vehicle.turnSpeed * specMultiplier * sign(sin(direction*pi/180)),MOVE_ACCEL_STEP);
		if(cos(direction*pi/180) <= -MOVE_ANGLE_THRESHOLD) {
			turnSpeed = 0;
			direction = 180;
		}
	}
	else if (right) {
		turnSpeed = approach(turnSpeed,data.vehicle.turnSpeed * specMultiplier * -sign(sin(direction*pi/180)),MOVE_ACCEL_STEP);
		if(cos(direction*pi/180) >= MOVE_ANGLE_THRESHOLD) {
			turnSpeed = 0;
			direction = 0;
		}
	}
	else {
		turnSpeed = approach(turnSpeed,0,MOVE_ACCEL_STEP);
	}
	
	direction += turnSpeed;
	
	if (accel) speed = approach(speed,data.vehicle.speed * specMultiplier,0.1);
	else if (reverse) speed = approach(speed,-data.vehicle.speed * specMultiplier,0.1);
	else speed = approach(speed,0,0.1);
	
	if (fire1 && !is_undefined(shotObject)) {
		var shots = 0;
		with (shotObject) if (creator == other.id) shots++;
		
		if (shots < data.vehicle.maxBurst && (current_time - shotTimeStamp) >= data.vehicle.burstInterval) {
			var stats = variable_struct_get(data, "stats");
			if (!is_undefined(stats) && is_struct(stats)) stats.totalShots++;
			var angle = direction + random_range(-1,1);
			var shot = instance_create_depth(x,y,depth+1,shotObject);
			shot.image_xscale	= data.vehicle.ammo.xScale;
			shot.image_yscale	= data.vehicle.ammo.yScale;
			shot.creator		= id;
			shot.playerNumber	= number;
			shot.sprite_index	= data.vehicle.ammo.sprite;
			shot.speed			= data.vehicle.ammo.speed;
			shot.direction		= angle;
			shot.hp				= data.vehicle.ammo.hp * specMultiplier;
			shotTimeStamp		= current_time;
			audio_play_sound_at(data.vehicle.ammo.sound,x,y,0,100,300,1,false,1);
		}
		
		var machineGun = variable_struct_get(data, "machineGun");
		
		if (!is_undefined(machineGun) && is_struct(machineGun)) {
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
				machineGunShot.playerNumber	= number;
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
				machineGunShot.playerNumber	= number;
				machineGunShot.sprite_index	= machineGun.ammo.sprite;
				machineGunShot.speed		= machineGun.ammo.speed;
				machineGunShot.direction	= angle;
				machineGunShot.hp			= machineGun.ammo.hp;
				machineGunShotTimeStamp		= current_time;
				
				var stats = variable_struct_get(data, "stats");
				if (!is_undefined(stats) && is_struct(stats)) stats.totalShots += 2;
				
				machineGunShotTimeStamp		= current_time;
				audio_play_sound_at(machineGun.ammo.sound,x,y,0,100,300,1,false,1);
			}
		}
	}
}