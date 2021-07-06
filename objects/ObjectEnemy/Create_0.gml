/// @description Insert description here

enabled			= true;
image_xscale	= 0.3;
image_yscale	= 0.3;
hp				= 100;
status			= STATUS_HEALTHY;
vehicle			= undefined;
specMultiplier	= 0.4;
keys			= undefined;
_speed			= 0;
shotTimeStamp	= 0;
toImageAngle	= 0;
turn			= 0.8;
moveScript		= ai_move_script;

nearestTarget	= undefined;
shotObject		= ObjectEnemyShot;
blendAmount		= 0;
toBlendAmount	= 1;

if (random(100) < 50) hasPrize = true;
else hasPrize = false;
