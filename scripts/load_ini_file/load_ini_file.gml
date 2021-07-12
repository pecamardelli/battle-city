// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_ini_file () {
	ini_open(CONFIG_FILE);
	
	global.player1.input		= ini_read_string("player1","input","keyboard");
	
	global.player1.keys.left	= ini_read_real("player1","keyLeft",65);
	global.player1.keys.right	= ini_read_real("player1","keyRight",68);
	global.player1.keys.up		= ini_read_real("player1","keyUp",87);
	global.player1.keys.down	= ini_read_real("player1","keyDown",83);

	global.player1.keys.fire1	= ini_read_real("player1","keyFire1",106);
	global.player1.keys.fire2	= ini_read_real("player1","keyFire2",101);
	global.player1.keys.fire3	= ini_read_real("player1","keyFire3",103);
	global.player1.keys.fire4	= ini_read_real("player1","keyFire4",104);
	
	global.player1.keys.start	= ini_read_real("player1","keyStart",13);
	global.player1.keys.select	= ini_read_real("player1","keySelect",40);
	
	global.player1.keys.accel	= ini_read_real("player1","keyAccel",100);
	global.player1.keys.brake	= ini_read_real("player1","keyBrake",105);
	global.player1.keys.reverse	= ini_read_real("player1","keyReverse",102)
	
	global.player2.input		= ini_read_string("player2","input","keyboard");
	
	global.player2.keys.left	= ini_read_real("player2","keyLeft",65);
	global.player2.keys.right	= ini_read_real("player2","keyRight",68);
	global.player2.keys.up		= ini_read_real("player2","keyUp",87);
	global.player2.keys.down	= ini_read_real("player2","keyDown",83);

	global.player2.keys.fire1	= ini_read_real("player2","keyFire1",106);
	global.player2.keys.fire2	= ini_read_real("player2","keyFire2",101);
	global.player2.keys.fire3	= ini_read_real("player2","keyFire3",103);
	global.player2.keys.fire4	= ini_read_real("player2","keyFire4",104);
	
	global.player2.keys.start	= ini_read_real("player2","keyStart",13);
	global.player2.keys.select	= ini_read_real("player2","keySelect",40);
	
	global.player2.keys.accel	= ini_read_real("player2","keyAccel",100);
	global.player2.keys.brake	= ini_read_real("player2","keyBrake",105);
	global.player2.keys.reverse	= ini_read_real("player2","keyReverse",102)
	
	ini_close();
}