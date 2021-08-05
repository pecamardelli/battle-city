/// @description Insert description here

invulnerable	= true;
material		= MATERIAL_METAL;
image_xscale	= 0.3;
image_yscale	= 0.3;
hp				= 100;
status			= STATUS_HEALTHY;
turnSpeed		= 0;

data = {
	vehicle: undefined,
	machineGun: undefined
};

number			= undefined;
specMultiplier	= 0.4;
keys			= undefined;
_speed			= 0;
shotTimeStamp	= 0;
toDirection		= 0;
cannonDirection	= direction;

moveScript		= ai_move_script;

toAlpha	= 1;

nearestTarget	= undefined;
shotObject		= ObjectEnemyShot;
blendAmount		= 0;
toBlendAmount	= 1;

lastX		= x;
lastY		= y;
pointToGo	= get_random_point();
alarm_set(0,room_speed*3);

machineGun				= undefined;
machineGunShotTimeStamp	= 0;
machineGunOffset		= 15;

soundEmitter = audio_emitter_create();
engineSound = undefined;