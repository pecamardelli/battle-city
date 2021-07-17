/// @description Insert description here
randomize();

window_set_cursor(cr_none);
cursor_sprite = SpriteCursor;

global.pads = [];

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
	new Vehicle(SpriteTank01,2,0.1,2,global.ammo[0],1,300,50,400,90,100),
	new Vehicle(SpriteTank02,2.8,0.15,2.3,global.ammo[1],2,250,120,420,105,400),
	new Vehicle(SpriteTank03,2.3,0.12,1.7,global.ammo[2],5,350,150,460,120,2000),
	new Vehicle(SpriteTank04,1.9,0.08,1.5,global.ammo[3],3,400,200,500,150,4000)
];

global.player1.vehicle = json_parse(json_stringify(global.tanks[0]));
global.player2.vehicle = json_parse(json_stringify(global.tanks[0]));

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
	//{
	//	sprite: SpritePrizeAccel,
	//	color: c_olive,
	//	script: prize_accel
	//},
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

global.padButtons = ds_map_create();
global.padButtons[? gp_padu]	= SpriteArrowUp;
global.padButtons[? gp_padd]	= SpriteArrowDown;
global.padButtons[? gp_padl]	= SpriteArrowLeft;
global.padButtons[? gp_padr]	= SpriteArrowRight;
global.padButtons[? gp_face1]	= SpriteButton1;
global.padButtons[? gp_face2]	= SpriteButton2;
global.padButtons[? gp_face3]	= SpriteButton3;
global.padButtons[? gp_face4]	= SpriteButton4;
global.padButtons[? gp_shoulderl]	= SpriteL1;
global.padButtons[? gp_shoulderlb]	= SpriteL2;
global.padButtons[? gp_shoulderr]	= SpriteR1;
global.padButtons[? gp_shoulderrb]	= SpriteR2;
global.padButtons[? gp_start]	= SpriteStar;
global.padButtons[? gp_select]	= SpriteSelect;

global.stageData = {
	vehicleConcurrency: 5,
	vehicleNumber: 3,
	vehicleInterval: 12,
	number: 1
};

global.disableEnemies		= false;
global.enemyFriendlyFire	= false;
global.playerNumber			= 1;