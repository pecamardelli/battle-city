/// @description Insert description here
if (alpha >= 1) {
	global.stageNumber++;
	//global.stageData.tankNumber		= round(global.stageData.tankNumber*1.1);
	//if (global.stageData.tankConcurrency < MAX_VEHICLE_CONCURRENCY) global.stageData.tankConcurrency += 0.5;
	//global.stageData.tankInterval	= global.stageData.tankInterval*0.98;
	fade_screen(FADE_OUT,FADE_TIME,undefined,RoomStageScreen);
}
