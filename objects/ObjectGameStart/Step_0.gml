/// @description Insert description here

logoY		= approach(logoY, logoYFinal, 2);
logoAlpha	= approach(logoAlpha, 1, 0.01);

if (logoAlpha == 1 && logoY == logoYFinal) {
	menuEntryAlpha	= approach(menuEntryAlpha, 1, 0.01);
	menuSelectorY	= approach(menuSelectorY,menuSelectorInitialY + menuEntrySeparation * menuEntryPosition, 5);
}

if (!is_undefined(global.player1.padIndex)) {
	if (gamepad_button_check_pressed(global.player1.padIndex, gp_padu)) {
		if (menuEntryPosition > 0) {
			menuEntryPosition--;	
		}
	}
	
	if (gamepad_button_check_pressed(global.player1.padIndex, gp_padd)) {
		if (menuEntryPosition < menuEntryNumber - 1) {
			menuEntryPosition++;	
		}
	}
	
	if (gamepad_button_check_pressed(global.player1.padIndex, gp_start)) {
		if (menuEntryPosition == 2) fade_screen(FADE_OUT,FADE_TIME,undefined,RoomOptions); //room_goto(RoomOptions);
		else room_goto(RoomBattleField);
	}
}
