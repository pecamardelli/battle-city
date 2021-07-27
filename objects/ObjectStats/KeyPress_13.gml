/// @description Insert description here
if (alpha >= 1) {
	global.stageNumber++;
	//global.stageData.vehicleNumber		= round(global.stageData.vehicleNumber*1.1);
	//if (global.stageData.vehicleConcurrency < MAX_VEHICLE_CONCURRENCY) global.stageData.vehicleConcurrency += 0.5;
	//global.stageData.vehicleInterval	= global.stageData.vehicleInterval*0.98;
	fade_screen(FADE_OUT,FADE_TIME,undefined,RoomStageScreen);
}
