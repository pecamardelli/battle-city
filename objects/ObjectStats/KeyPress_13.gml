/// @description Insert description here
if (alpha >= 1) {
	global.stageData.number++;
	global.stageData.vehicleNumber		= round(global.stageData.vehicleNumber*1.1);
	global.stageData.vehicleConcurrency	= round(global.stageData.vehicleConcurrency*1.05);
	global.stageData.vehicleInterval	= round(global.stageData.vehicleInterval*0.95);
	fade_screen(FADE_OUT,FADE_TIME,undefined,RoomStageScreen);
}
