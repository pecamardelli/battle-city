/// @description Insert description here

if (room == RoomBattleField) {
	var totalLivesLeft = global.player1.tanks;
	if (global.playerNumber > 1) totalLivesLeft += global.player2.tanks;
	
	if (totalLivesLeft == 0 && instance_number(ObjectPlayer) == 0 && instance_number(ObjectPlasmaBall) == 0) {
		fade_screen(FADE_OUT,FADE_TIME,undefined,RoomGameOver);
	}
}
