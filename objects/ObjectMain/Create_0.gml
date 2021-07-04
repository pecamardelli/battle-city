/// @description Insert description here
randomize();

global.tanks	= [
	new Tank(SpriteTank01,2,0.1,2,undefined,2,300),
	new Tank(SpriteTank02,2.3,0.12,2.3,undefined,3,150),
	new Tank(SpriteTank03,1.8,0.1,1.5,undefined,5,100),
	new Tank(SpriteTank04,2.1,0.11,2.5,undefined,3,80)
];

global.wallThickness = 10;

global.player1Keys = {
	keyLeft: 65,
	keyRight: 68,
	keyUp: 87,
	keyDown: 83,

	keyFire1: undefined,
	keyFire2: 101,
	keyFire3: 103,
	keyFire4: 104,
	
	keyStart: undefined,
	keySelect: undefined,
	
	keyAccel: 100,
	keyBrake: undefined,
	keyReverse: undefined
}