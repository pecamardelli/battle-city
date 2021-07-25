/// @description Insert description here

if (menuEntryAlpha == 1) {
	if (menuEntryPosition == 2) fade_screen(FADE_OUT,FADE_TIME,undefined,RoomOptions); //room_goto(RoomOptions);
	else {
		global.playerNumber = menuEntryPosition + 1;
		fade_screen(FADE_OUT,FADE_TIME,undefined,RoomStageScreen);
	}
}