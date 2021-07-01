/// @description Insert description here

if (keyboard_check(keyUp)) {
	if(abs(90-image_angle) < 180) var turnSpeed = tank.turnSpeed;
	else var turnSpeed = -tank.turnSpeed;
	image_angle	= approach(image_angle,90,turnSpeed);
	_speed = approach(speed,tank.speed,0.1);
}

if (keyboard_check(keyDown)) {
	if(abs(270-image_angle) < 180) var turnSpeed = tank.turnSpeed;
	else var turnSpeed = -tank.turnSpeed;
	image_angle	= approach(image_angle,270,turnSpeed);
	_speed = approach(speed,tank.speed,0.1);
}

if (keyboard_check(keyLeft)) {
	if(abs(180-image_angle) < 180) var turnSpeed = tank.turnSpeed;
	else var turnSpeed = -tank.turnSpeed;
	image_angle	= approach(image_angle,180,turnSpeed);
	_speed = approach(speed,tank.speed,0.1);
}

if (keyboard_check(keyRight)) {
	if(abs(360-image_angle) < 180) var turnSpeed = tank.turnSpeed;
	else var turnSpeed = -tank.turnSpeed;
	image_angle	= approach(image_angle,360,turnSpeed);
	_speed = approach(speed,tank.speed,0.1);
}

if (keyboard_check(false)) _speed = approach(_speed,0,0.1);

vspeed = _speed * (-sin(image_angle*pi/180));
hspeed = _speed * cos(image_angle*pi/180);

if (image_angle > 360) image_angle -= 360;
if (image_angle < 0) image_angle = 360 + image_angle;

if (keyboard_check(keyButton1)) {
	var shot = instance_create_depth(x,y,depth+1,ObjectShot);
	shot.sprite_index = SpriteBullet;
	shot.vspeed = sign(vspeed) * 10;
	shot.hspeed = sign(hspeed) * 10;
	shot.image_angle = image_angle;
}