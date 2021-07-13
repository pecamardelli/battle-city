// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_ini_file () {
	ini_open(CONFIG_FILE);
	
	global.player1.input = ini_read_string("player1","input",INPUT_KEYBOARD);
	
	global.player1.keys.keyboard.left	= ini_read_real("player1","keyLeft",65);
	global.player1.keys.keyboard.right	= ini_read_real("player1","keyRight",68);
	global.player1.keys.keyboard.up		= ini_read_real("player1","keyUp",87);
	global.player1.keys.keyboard.down	= ini_read_real("player1","keyDown",83);

	global.player1.keys.keyboard.fire1	= ini_read_real("player1","keyFire1",106);
	global.player1.keys.keyboard.fire2	= ini_read_real("player1","keyFire2",101);
	global.player1.keys.keyboard.fire3	= ini_read_real("player1","keyFire3",103);
	global.player1.keys.keyboard.fire4	= ini_read_real("player1","keyFire4",104);
	
	global.player1.keys.keyboard.start	= ini_read_real("player1","keyStart",13);
	global.player1.keys.keyboard.select	= ini_read_real("player1","keySelect",40);
	
	global.player1.keys.keyboard.accel	= ini_read_real("player1","keyAccel",100);
	global.player1.keys.keyboard.brake	= ini_read_real("player1","keyBrake",105);
	global.player1.keys.keyboard.reverse	= ini_read_real("player1","keyReverse",102)
	
	global.player1.keys.pad.left	= ini_read_real("player1","padLeft",gp_padl);
	global.player1.keys.pad.right	= ini_read_real("player1","padRight",gp_padr);
	global.player1.keys.pad.up		= ini_read_real("player1","padUp",gp_padu);
	global.player1.keys.pad.down	= ini_read_real("player1","padDown",gp_padd);

	global.player1.keys.pad.fire1	= ini_read_real("player1","padFire1",gp_face1);
	global.player1.keys.pad.fire2	= ini_read_real("player1","padFire2",gp_face2);
	global.player1.keys.pad.fire3	= ini_read_real("player1","padFire3",gp_face3);
	global.player1.keys.pad.fire4	= ini_read_real("player1","padFire4",gp_face4);
	
	global.player1.keys.pad.start	= ini_read_real("player1","padStart",gp_start);
	global.player1.keys.pad.select	= ini_read_real("player1","padSelect",gp_select);
	
	global.player1.keys.pad.accel	= ini_read_real("player1","padAccel",gp_shoulderr);
	global.player1.keys.pad.brake	= ini_read_real("player1","padBrake",gp_shoulderrb);
	global.player1.keys.pad.reverse	= ini_read_real("player1","padReverse",gp_shoulderl)
	
	if (ini_read_string("player1","mouseAim",FALSE) == FALSE) global.player1.mouseAim = false;
	else global.player1.mouseAim = true;
	
	global.player2.input = ini_read_string("player2","input",INPUT_KEYBOARD);
	
	global.player2.keys.keyboard.left	= ini_read_real("player2","keyLeft",65);
	global.player2.keys.keyboard.right	= ini_read_real("player2","keyRight",68);
	global.player2.keys.keyboard.up		= ini_read_real("player2","keyUp",87);
	global.player2.keys.keyboard.down	= ini_read_real("player2","keyDown",83);

	global.player2.keys.keyboard.fire1	= ini_read_real("player2","keyFire1",106);
	global.player2.keys.keyboard.fire2	= ini_read_real("player2","keyFire2",101);
	global.player2.keys.keyboard.fire3	= ini_read_real("player2","keyFire3",103);
	global.player2.keys.keyboard.fire4	= ini_read_real("player2","keyFire4",104);
	
	global.player2.keys.keyboard.start	= ini_read_real("player2","keyStart",13);
	global.player2.keys.keyboard.select	= ini_read_real("player2","keySelect",40);
	
	global.player2.keys.keyboard.accel	= ini_read_real("player2","keyAccel",100);
	global.player2.keys.keyboard.brake	= ini_read_real("player2","keyBrake",105);
	global.player2.keys.keyboard.reverse	= ini_read_real("player2","keyReverse",102);
	
	global.player2.keys.pad.left	= ini_read_real("player2","padLeft",gp_padl);
	global.player2.keys.pad.right	= ini_read_real("player2","padRight",gp_padr);
	global.player2.keys.pad.up		= ini_read_real("player2","padUp",gp_padu);
	global.player2.keys.pad.down	= ini_read_real("player2","padDown",gp_padd);

	global.player2.keys.pad.fire1	= ini_read_real("player2","padFire1",gp_face1);
	global.player2.keys.pad.fire2	= ini_read_real("player2","padFire2",gp_face2);
	global.player2.keys.pad.fire3	= ini_read_real("player2","padFire3",gp_face3);
	global.player2.keys.pad.fire4	= ini_read_real("player2","padFire4",gp_face4);
	
	global.player2.keys.pad.start	= ini_read_real("player2","padStart",gp_start);
	global.player2.keys.pad.select	= ini_read_real("player2","padSelect",gp_select);

	global.player2.keys.pad.accel	= ini_read_real("player2","padAccel",gp_shoulderr);
	global.player2.keys.pad.brake	= ini_read_real("player2","padBrake",gp_shoulderrb);
	global.player2.keys.pad.reverse	= ini_read_real("player2","padReverse",gp_shoulderl)
	
	if (ini_read_string("player2","mouseAim",FALSE) == FALSE) global.player2.mouseAim = false;
	else global.player2.mouseAim = true;
	
	if (ini_read_string("game","friendlyFire",FALSE) == FALSE) global.friendlyFire = false;
	else global.friendlyFire = true;
	
	ini_close();
}