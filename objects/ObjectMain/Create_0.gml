/// @description Insert description here
randomize();

global.ammo	= [
	new Ammo(SpriteAmmo01,10,8,c_white),
	new Ammo(SpriteAmmo01,10,10,c_dkgray),
	new Ammo(SpriteAmmo02,35,12,c_white),
	new Ammo(SpriteAmmo02,40,14,c_yellow),
];

global.tanks	= [
	new Vehicle(SpriteTank01,2,0.1,2,global.ammo[0],2,300,50),
	new Vehicle(SpriteTank02,2.8,0.15,2.3,global.ammo[1],3,200,120),
	new Vehicle(SpriteTank03,2.3,0.12,1.7,global.ammo[2],5,150,150),
	new Vehicle(SpriteTank04,1.9,0.08,1.5,global.ammo[3],3,350,200)
];

global.explosions = [
	SpriteExplosion01,
	SpriteExplosion02
];

global.flames = [
	SpriteFlames01,
	SpriteFlames02
];

global.stageVehicleNumber = irandom_range(15,20);

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
	keyReverse: 102
}