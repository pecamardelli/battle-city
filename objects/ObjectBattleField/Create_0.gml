/// @description Insert description here

tankNumber = STAGE_TANK_NUMBER + 0.5 * global.stageNumber;
tankConcurrency	= STAGE_TANK_CONCURRENCY + 0.1 * global.stageNumber;
if (tankConcurrency > STAGE_MAX_TANK_CONCURRENCY) tankConcurrency = STAGE_MAX_TANK_CONCURRENCY;
tankInterval = STAGE_TANK_INTERVAL;

truckStartingPoint = 40 + global.stageNumber;
if (truckStartingPoint > 100) truckStartingPoint = 100;

truckConcurrency = STAGE_TRUCK_CONCURRENCY + 0.1 * global.stageNumber;
if (truckConcurrency > STAGE_MAX_TRUCK_CONCURRENCY) truckConcurrency = STAGE_MAX_TRUCK_CONCURRENCY;
truckInterval = STAGE_TRUCK_INTERVAL;

alarm_set(0,room_speed*tankInterval);
alarm_set(2,room_speed*truckInterval);

sprite_index	= SpriteGround;
image_index		= irandom(sprite_get_number(sprite_index)-1);
image_alpha		= 0.3;
image_blend		= c_grey;

gamePaused		= false;
pauseWindow		= undefined;
customScript	= undefined;