/// @description Insert description here

vehicleNumber		= STAGE_VEHICLE_NUMBER + 0.5 * global.stageNumber;

vehicleConcurrency	= STAGE_VEHICLE_CONCURRENCY + 0.1 * global.stageNumber;
if (vehicleConcurrency > STAGE_MAX_VEHICLE_CONCURRENCY) vehicleConcurrency = STAGE_MAX_VEHICLE_CONCURRENCY;

vehicleInterval		= STAGE_VEHICLE_INTERVAL * 1;

alarm_set(0,room_speed*vehicleInterval);

sprite_index	= SpriteGround;
image_index		= irandom(sprite_get_number(sprite_index)-1);
image_alpha		= 0.3;
image_blend		= c_grey;

gamePaused		= false;
pauseWindow		= undefined;
customScript	= undefined;