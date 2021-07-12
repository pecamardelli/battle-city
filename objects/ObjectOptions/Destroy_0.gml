/// @description Insert description here

ini_open(CONFIG_FILE);

ini_write_real("player1","keyUp",global.player1.keys.up);
ini_write_real("player1","keyDown",global.player1.keys.down);
ini_write_real("player1","keyLeft",global.player1.keys.left);
ini_write_real("player1","keyRight",global.player1.keys.right);
ini_write_real("player1","keyFire1",global.player1.keys.fire1);
ini_write_real("player1","keyFire2",global.player1.keys.fire2);
ini_write_real("player1","keyFire3",global.player1.keys.fire3);
ini_write_real("player1","keyFire4",global.player1.keys.fire4);
ini_write_real("player1","keyStart",global.player1.keys.start);
ini_write_real("player1","keySelect",global.player1.keys.select);
ini_write_real("player1","keyAccel",global.player1.keys.accel);
ini_write_real("player1","keyBrake",global.player1.keys.brake);
ini_write_real("player1","keyReverse",global.player1.keys.reverse);
	
if (global.player1.mouseAim) ini_write_string("player1","mouseAim",TRUE);
else ini_write_string("player1","mouseAim",FALSE);

ini_write_real("player2","keyUp",global.player2.keys.up);
ini_write_real("player2","keyDown",global.player2.keys.down);
ini_write_real("player2","keyLeft",global.player2.keys.left);
ini_write_real("player2","keyRight",global.player2.keys.right);
ini_write_real("player2","keyFire1",global.player2.keys.fire1);
ini_write_real("player2","keyFire2",global.player2.keys.fire2);
ini_write_real("player2","keyFire3",global.player2.keys.fire3);
ini_write_real("player2","keyFire4",global.player2.keys.fire4);
ini_write_real("player2","keyStart",global.player2.keys.start);
ini_write_real("player2","keySelect",global.player2.keys.select);
ini_write_real("player2","keyAccel",global.player2.keys.accel);
ini_write_real("player2","keyBrake",global.player2.keys.brake);
ini_write_real("player2","keyReverse",global.player2.keys.reverse);
ini_write_string("player1","mouseAim",global.player1.mouseAim);
	
if (global.player2.mouseAim) ini_write_string("player2","mouseAim",TRUE);
else ini_write_string("player2","mouseAim",FALSE);
	
if (global.friendlyFire) ini_write_string("game","friendlyFire",TRUE);
else ini_write_string("game","friendlyFire",FALSE);
	
if (global.eagle) ini_write_string("game","eagle",TRUE);
else ini_write_string("game","eagle",FALSE);

ini_close();