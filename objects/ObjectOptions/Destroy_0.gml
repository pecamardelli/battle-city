/// @description Insert description here

ini_open(CONFIG_FILE);

ini_write_string("player1","input",global.player1.input);
ini_write_real("player1","keyUp",global.player1.keys.keyboard.up);
ini_write_real("player1","keyDown",global.player1.keys.keyboard.down);
ini_write_real("player1","keyLeft",global.player1.keys.keyboard.left);
ini_write_real("player1","keyRight",global.player1.keys.keyboard.right);
ini_write_real("player1","keyFire1",global.player1.keys.keyboard.fire1);
ini_write_real("player1","keyFire2",global.player1.keys.keyboard.fire2);
ini_write_real("player1","keyFire3",global.player1.keys.keyboard.fire3);
ini_write_real("player1","keyFire4",global.player1.keys.keyboard.fire4);
ini_write_real("player1","keyStart",global.player1.keys.keyboard.start);
ini_write_real("player1","keySelect",global.player1.keys.keyboard.select);
ini_write_real("player1","keyAccel",global.player1.keys.keyboard.accel);
ini_write_real("player1","keyBrake",global.player1.keys.keyboard.brake);
ini_write_real("player1","keyReverse",global.player1.keys.keyboard.reverse);

ini_write_real("player1","padUp",global.player1.keys.pad.up);
ini_write_real("player1","padDown",global.player1.keys.pad.down);
ini_write_real("player1","padLeft",global.player1.keys.pad.left);
ini_write_real("player1","padRight",global.player1.keys.pad.right);
ini_write_real("player1","padFire1",global.player1.keys.pad.fire1);
ini_write_real("player1","padFire2",global.player1.keys.pad.fire2);
ini_write_real("player1","padFire3",global.player1.keys.pad.fire3);
ini_write_real("player1","padFire4",global.player1.keys.pad.fire4);
ini_write_real("player1","padStart",global.player1.keys.pad.start);
ini_write_real("player1","padSelect",global.player1.keys.pad.select);
ini_write_real("player1","padAccel",global.player1.keys.pad.accel);
ini_write_real("player1","padBrake",global.player1.keys.pad.brake);
ini_write_real("player1","padReverse",global.player1.keys.pad.reverse);
	
if (global.player1.mouseAim) ini_write_string("player1","mouseAim",TRUE);
else ini_write_string("player1","mouseAim",FALSE);

ini_write_string("player2","input",global.player2.input);
ini_write_real("player2","keyUp",global.player2.keys.keyboard.up);
ini_write_real("player2","keyDown",global.player2.keys.keyboard.down);
ini_write_real("player2","keyLeft",global.player2.keys.keyboard.left);
ini_write_real("player2","keyRight",global.player2.keys.keyboard.right);
ini_write_real("player2","keyFire1",global.player2.keys.keyboard.fire1);
ini_write_real("player2","keyFire2",global.player2.keys.keyboard.fire2);
ini_write_real("player2","keyFire3",global.player2.keys.keyboard.fire3);
ini_write_real("player2","keyFire4",global.player2.keys.keyboard.fire4);
ini_write_real("player2","keyStart",global.player2.keys.keyboard.start);
ini_write_real("player2","keySelect",global.player2.keys.keyboard.select);
ini_write_real("player2","keyAccel",global.player2.keys.keyboard.accel);
ini_write_real("player2","keyBrake",global.player2.keys.keyboard.brake);
ini_write_real("player2","keyReverse",global.player2.keys.keyboard.reverse);

ini_write_real("player2","padUp",global.player2.keys.pad.up);
ini_write_real("player2","padDown",global.player2.keys.pad.down);
ini_write_real("player2","padLeft",global.player2.keys.pad.left);
ini_write_real("player2","padRight",global.player2.keys.pad.right);
ini_write_real("player2","padFire1",global.player2.keys.pad.fire1);
ini_write_real("player2","padFire2",global.player2.keys.pad.fire2);
ini_write_real("player2","padFire3",global.player2.keys.pad.fire3);
ini_write_real("player2","padFire4",global.player2.keys.pad.fire4);
ini_write_real("player2","padStart",global.player2.keys.pad.start);
ini_write_real("player2","padSelect",global.player2.keys.pad.select);
ini_write_real("player2","padAccel",global.player2.keys.pad.accel);
ini_write_real("player2","padBrake",global.player2.keys.pad.brake);
ini_write_real("player2","padReverse",global.player2.keys.pad.reverse);

if (global.player2.mouseAim) ini_write_string("player2","mouseAim",TRUE);
else ini_write_string("player2","mouseAim",FALSE);
	
if (global.friendlyFire) ini_write_string("game","friendlyFire",TRUE);
else ini_write_string("game","friendlyFire",FALSE);

ini_close();