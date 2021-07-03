// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_keys(){
	if(!is_undefined(global.player1Keys.keyLeft)) keyLeft	= keyboard_check(global.player1Keys.keyLeft);
	if(!is_undefined(global.player1Keys.keyRight)) keyRight	= keyboard_check(global.player1Keys.keyRight);
	if(!is_undefined(global.player1Keys.keyUp)) keyUp		= keyboard_check(global.player1Keys.keyUp);
	if(!is_undefined(global.player1Keys.keyDown)) keyDown	= keyboard_check(global.player1Keys.keyDown);

	if(!is_undefined(global.player1Keys.keyButton1)) keyButton1	= keyboard_check(global.player1Keys.keyButton1);
	if(!is_undefined(global.player1Keys.keyButton2)) keyButton2	= keyboard_check(global.player1Keys.keyButton2);
	if(!is_undefined(global.player1Keys.keyButton3)) keyButton3	= keyboard_check(global.player1Keys.keyButton3);
	if(!is_undefined(global.player1Keys.keyButton4)) keyButton4	= keyboard_check(global.player1Keys.keyButton4);
	
	if(!is_undefined(global.player1Keys.keyStart)) keyStart		= keyboard_check(global.player1Keys.keyStart);
	if(!is_undefined(global.player1Keys.keySelect)) keySelect	= keyboard_check(global.player1Keys.keySelect);
	
	if(!is_undefined(global.player1Keys.keyR1)) keyR1	= keyboard_check(global.player1Keys.keyR1);
	if(!is_undefined(global.player1Keys.keyR2)) keyR2	= keyboard_check(global.player1Keys.keyR2);
	if(!is_undefined(global.player1Keys.keyR3)) keyR3	= keyboard_check(global.player1Keys.keyR3);
	if(!is_undefined(global.player1Keys.keyL1)) keyL1	= keyboard_check(global.player1Keys.keyL1);
	if(!is_undefined(global.player1Keys.keyL2)) keyL2	= keyboard_check(global.player1Keys.keyL2);
	if(!is_undefined(global.player1Keys.keyL3)) keyL3	= keyboard_check(global.player1Keys.keyL3);
}