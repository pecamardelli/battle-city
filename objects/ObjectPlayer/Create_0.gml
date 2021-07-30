/// @description Insert description here

enabled			= false;
invulnerable	= false;
invisible		= false;
material		= MATERIAL_METAL;
number			= undefined;
data			= undefined;

image_xscale	= 0.3;
image_yscale	= 0.3;

status			= STATUS_HEALTHY;
hp				= 100;
turnSpeed		= 0;
score			= 0;
vehicle			= undefined;
shieldId		= undefined;
specMultiplier	= 1.3;
_speed			= 0;
shotTimeStamp	= 0;

toDirection	= 0;
shotObject	= ObjectPlayerShot;

customScript = undefined;

toAlpha	= 1;

machineGunShotTimeStamp	= 0;
machineGunOffset		= 15;

soundEmitter = audio_emitter_create();
engineSound = undefined;
prize_invulnerability();