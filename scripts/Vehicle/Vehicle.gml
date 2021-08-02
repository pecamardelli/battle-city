// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Vehicle(
	_sprite,
	_speed,
	_accel,
	_turnSpeed,
	_ammo,
	_maxBurst,
	_burstInterval,
	_hp,
	_engageDistance,
	_engageMaxAngle,
	_points,
	_engineSound,
	_stage,
	_cannon
) constructor {
	sprite			= _sprite;
	speed			= _speed;
	accel			= _accel;
	turnSpeed		= _turnSpeed;
	ammo			= _ammo;
	maxBurst		= _maxBurst;
	burstInterval	= _burstInterval;
	hp				= _hp;
	engageDistance	= _engageDistance;
	engageMaxAngle	= _engageMaxAngle;
	points			= _points;
	engineSound		= _engineSound;
	stage			= _stage;
	cannon			= _cannon;
}