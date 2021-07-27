/// @description Insert description here
randomize();

window_set_cursor(cr_none);
cursor_sprite = SpriteCursor;

global.pads = [];

global.player1 = new PlayerData();
global.player2 = new PlayerData();

load_ini_file();

global.sounds = {
	environment: {
		collision: {
			bulletOnMetal: [
				SoundBulletImpactMetal01,
				SoundBulletImpactMetal02
			],
			bulletOnConcrete: [
				SoundBulletImpactConcrete01,
				SoundBulletImpactConcrete02
			],
			cannonOnConcrete: [
				SoundCannonImpactConcrete01,
				SoundCannonImpactConcrete02,
				SoundCannonImpactConcrete03
			]
		},
		dirt: [
			SoundDirt01,
			SoundDirt02,
			SoundDirt03,
			SoundDirt04,
			SoundDirt05,
			SoundDirt06
		]
	},
	ammo: {
		tank: [
			SoundTankAmmo01,
			SoundTankAmmo02,
			SoundTankAmmo03,
			SoundTankAmmo04
		],
		machineGun: [
			SoundMachineGunAmmo01,
			SoundMachineGunAmmo02
		]
	},
	explosions: {
		big: [
			SoundExplosion01,
			SoundExplosion02,
			SoundExplosion03,
			SoundExplosion04,
			SoundExplosion05,
			SoundExplosion06,
			SoundExplosion07
		],
		tiny: [
			SoundTinyExplosion01,
			SoundTinyExplosion02
		]
	}
};

global.ammo	= [
	new Ammo(SpriteAmmo01,10,10,c_white,0.5,1,global.sounds.ammo.tank[0]),
	new Ammo(SpriteAmmo01,15,11,c_dkgray,0.5,1,global.sounds.ammo.tank[1]),
	new Ammo(SpriteAmmo02,35,12,c_white,0.5,1,global.sounds.ammo.tank[2]),
	new Ammo(SpriteAmmo02,40,14,c_yellow,0.5,1,global.sounds.ammo.tank[3]),
];

global.machineGuns = [
	new MachineGun(
		new Ammo(
			SpriteAmmo01,
			2,
			15,
			c_white,
			0.2,
			0.4,
			global.sounds.ammo.machineGun[irandom(array_length(global.sounds.ammo.machineGun)-1)]
		),
		8,
		180,
		0,
		0
	)
];

global.tanks = [
	new Vehicle(SpriteTank01,2,0.1,1.9,global.ammo[0],1,300,50,400,90,100,undefined,SoundTankEngine01,0),
	new Vehicle(SpriteTank02,2.2,0.15,2,global.ammo[1],2,250,70,420,105,400,undefined,SoundTankEngine02,0),
	new Vehicle(SpriteTank03,1.9,0.09,1.6,global.ammo[2],5,350,150,460,120,2000,undefined,SoundTankEngine03,0),
	new Vehicle(SpriteTank04,1.75,0.08,1.3,global.ammo[3],3,400,200,500,150,4000,undefined,SoundTankEngine04,0)
];

global.player1.vehicle = json_parse(json_stringify(global.tanks[0]));
global.player1.vehicleIndex = 0;
global.player2.vehicle = json_parse(json_stringify(global.tanks[0]));
global.player2.vehicleIndex = 0;

global.prizes = [
	{
		sprite: SpriteStar,
		color: c_red,
		script: prize_star,
		sound: SoundPrizeTaken
	},
	//{
	//	sprite: SpriteWrench,
	//	color: c_green,
	//	script: prize_health,
	//	sound: SoundPrizeTaken
	//},
	//{
	//	sprite: SpriteSpeedUp,
	//	color: c_orange,
	//	script: prize_speed,
	//	sound: SoundPrizeTaken
	//},
	//{
	//	sprite: SpriteGrenade,
	//	color: c_silver,
	//	script: prize_blow_all,
	//	sound: SoundPrizeTaken
	//},
	//{
	//	sprite: SpriteClock,
	//	color: c_yellow,
	//	script: prize_freeze_all,
	//	sound: SoundPrizeTaken
	//},
	//{
	//	sprite: SpriteHelmet,
	//	color: c_ltgrey,
	//	script: prize_invulnerability,
	//	sound: SoundPrizeTaken
	//},
	//{
	//	sprite: SpriteTank,
	//	color: c_teal,
	//	script: prize_life,
	//	sound: SoundExtraLife
	//},
	//{
	//	sprite: SpriteInvisibility,
	//	color: c_ltgrey,
	//	script: prize_invisibility,
	//	sound: SoundPrizeTaken
	//},
	//{
	//	sprite: SpriteMachineGun,
	//	color: make_color_rgb(192,0,0),
	//	script: prize_machine_gun,
	//	sound: SoundPrizeTaken
	//}
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

global.stageNumber			= 1;

global.disableEnemies		= false;
global.enemyFriendlyFire	= false;
global.playerNumber			= 1;