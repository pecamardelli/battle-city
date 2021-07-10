// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_ini_file () {
	ini_open(CONFIG_FILE);
	
	global.player1.input		= ini_read_string("player1","input","keyboard");
	
	global.player1.keys.left	= ini_read_real("player1","left",65);
	global.player1.keys.right	= ini_read_real("player1","right",68);
	global.player1.keys.up		= ini_read_real("player1","up",87);
	global.player1.keys.down	= ini_read_real("player1","down",83);

	global.player1.keys.fire1	= ini_read_real("player1","fire1",106);
	global.player1.keys.fire2	= ini_read_real("player1","fire2",101);
	global.player1.keys.fire3	= ini_read_real("player1","fire3",103);
	global.player1.keys.fire4	= ini_read_real("player1","fire4",104);
	
	global.player1.keys.start	= ini_read_real("player1","start",13);
	global.player1.keys.select	= ini_read_real("player1","select",40);
	
	global.player1.keys.accel	= ini_read_real("player1","accel",100);
	global.player1.keys.brake	= ini_read_real("player1","brake",105);
	global.player1.keys.reverse	= ini_read_real("player1","reverse",102)
	
	global.player2.input		= ini_read_string("player2","input","keyboard");
	
	global.player2.keys.left	= ini_read_real("player2","left",65);
	global.player2.keys.right	= ini_read_real("player2","right",68);
	global.player2.keys.up		= ini_read_real("player2","up",87);
	global.player2.keys.down	= ini_read_real("player2","down",83);

	global.player2.keys.fire1	= ini_read_real("player2","fire1",106);
	global.player2.keys.fire2	= ini_read_real("player2","fire2",101);
	global.player2.keys.fire3	= ini_read_real("player2","fire3",103);
	global.player2.keys.fire4	= ini_read_real("player2","fire4",104);
	
	global.player2.keys.start	= ini_read_real("player2","start",13);
	global.player2.keys.select	= ini_read_real("player2","select",40);
	
	global.player2.keys.accel	= ini_read_real("player2","accel",100);
	global.player2.keys.brake	= ini_read_real("player2","brake",105);
	global.player2.keys.reverse	= ini_read_real("player2","reverse",102)
	
	ini_close();
}