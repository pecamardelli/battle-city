/// @description Insert description here
randomize();

global.player1 = new PlayerData();
global.player2 = new PlayerData();

load_ini_file();

global.ammo	= [
	new Ammo(SpriteAmmo01,10,10,c_white,0.5,1),
	new Ammo(SpriteAmmo01,10,11,c_dkgray,0.5,1),
	new Ammo(SpriteAmmo02,35,12,c_white,0.5,1),
	new Ammo(SpriteAmmo02,40,14,c_yellow,0.5,1),
];

global.machineGuns = [
	new MachineGun(
		new Ammo(SpriteAmmo01,2,15,c_white,0.2,0.4),
		8,
		180,
		0
	)
];

global.tanks	= [
	new Vehicle(SpriteTank01,2,0.1,2,global.ammo[0],1,300,50,400,90),
	new Vehicle(SpriteTank02,2.8,0.15,2.3,global.ammo[1],2,250,120,420,105),
	new Vehicle(SpriteTank03,2.3,0.12,1.7,global.ammo[2],5,350,150,460,120),
	new Vehicle(SpriteTank04,1.9,0.08,1.5,global.ammo[3],3,400,200,500,150)
];

global.prizes = [
	{
		sprite: SpriteStar,
		color: c_red,
		script: prize_star
	},
	{
		sprite: SpriteWrench,
		color: c_green,
		script: prize_health
	},
	{
		sprite: SpriteSpeedUp,
		color: c_orange,
		script: prize_speed
	},
	{
		sprite: SpriteAccel,
		color: c_olive,
		script: prize_accel
	},
	{
		sprite: SpriteGrenade,
		color: c_silver,
		script: prize_blow_all
	},
	{
		sprite: SpriteClock,
		color: c_yellow,
		script: prize_freeze_all
	},
	{
		sprite: SpriteHelmet,
		color: c_ltgrey,
		script: prize_invulnerability
	},
	{
		sprite: SpriteTank,
		color: c_teal,
		script: prize_life
	},
	{
		sprite: SpriteInvisibility,
		color: c_ltgrey,
		script: prize_invisibility
	},
	{
		sprite: SpriteMachineGun,
		color: make_color_rgb(192,0,0),
		script: prize_machine_gun
	}
];

global.explosions = [
	SpriteExplosion01,
	SpriteExplosion02
];

global.flames = [
	SpriteFlames01,
	SpriteFlames02
];

global.stageVehicleNumber	= irandom_range(15,20);
global.disableEnemies		= false;