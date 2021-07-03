/// @description Insert description here

init_keys();
get_keys();

if (keyUp) {
	if(abs(0-image_angle) < 180) var turnSpeed = tank.turnSpeed;
	else var turnSpeed = -tank.turnSpeed;
	image_angle	= approach(image_angle,0,turnSpeed);
}

if (keyDown) {
	if(abs(180-image_angle) < 180) var turnSpeed = tank.turnSpeed;
	else var turnSpeed = -tank.turnSpeed;
	image_angle	= approach(image_angle,180,turnSpeed);
}

if (keyLeft) {
	if(abs(90-image_angle) < 180) var turnSpeed = tank.turnSpeed;
	else var turnSpeed = -tank.turnSpeed;
	image_angle	= approach(image_angle,90,turnSpeed);
}

if (keyRight) {
	if(abs(270-image_angle) < 180) var turnSpeed = tank.turnSpeed;
	else var turnSpeed = -tank.turnSpeed;
	image_angle	= approach(image_angle,270,turnSpeed);
}

if (keyButton2) _speed = approach(_speed,tank.speed,0.1);
else _speed = approach(_speed,0,0.1);

vspeed = _speed * -cos(image_angle*pi/180);
hspeed = _speed * -sin(image_angle*pi/180);

if (image_angle > 360) image_angle -= 360;
if (image_angle < 0) image_angle = 360 + image_angle;

if (x < sprite_get_width(sprite_index)*image_xscale/2) x = sprite_get_width(sprite_index)*image_xscale/2;
if (x > room_width - sprite_get_width(sprite_index)*image_xscale/2) x = room_width - sprite_get_width(sprite_index)*image_xscale/2;
if (y < sprite_get_height(sprite_index)*image_yscale/2 + global.wallThickness) y = sprite_get_height(sprite_index)*image_yscale/2 + global.wallThickness;
if (y > room_height - global.wallThickness - sprite_get_height(sprite_index)*image_yscale/2) y = room_height - global.wallThickness - sprite_get_height(sprite_index)*image_yscale/2;

if (keyButton1) {
	var shots = 0;
	with (ObjectShot) {
		if (parent == other.id) shots++;	
	}
		
	if (shots < tank.maxBurst && (current_time - shotTimeStamp) >= tank.burstInterval) {
		var angle = image_angle + random_range(-1,1);
		var shot = instance_create_depth(x,y,-101,ObjectShot);
		shot.parent			= id;
		shot.sprite_index	= SpriteBullet;
		shot.vspeed			= 10 * -cos(angle*pi/180);
		shot.hspeed			= 10 * -sin(angle*pi/180);
		shot.image_angle	= angle;
		shotTimeStamp		= current_time;
	}
}