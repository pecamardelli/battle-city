/// @description Insert description here
randomize();

window_set_cursor(cr_none);
cursor_sprite = SpriteCursor;

for (var i=0;i<256;i++)  global._fhinputKeys[i] = "Unknown";

global._fhinputKeys[vk_escape] = "Esc";
global._fhinputKeys[vk_f1] = "F1";
global._fhinputKeys[vk_f2] = "F2";
global._fhinputKeys[vk_f3] = "F3";
global._fhinputKeys[vk_f4] = "F4";
global._fhinputKeys[vk_f5] = "F5";
global._fhinputKeys[vk_f6] = "F6";
global._fhinputKeys[vk_f7] = "F7";
global._fhinputKeys[vk_f8] = "F8";
global._fhinputKeys[vk_f9] = "F9";
global._fhinputKeys[vk_f10] = "F10";
global._fhinputKeys[vk_f11] = "F11";
global._fhinputKeys[vk_f12] = "F12";
global._fhinputKeys[145] = "Scroll Lock";
global._fhinputKeys[vk_pause] = "Pause";
global._fhinputKeys[192] = "~";
global._fhinputKeys[49] = "1";
global._fhinputKeys[50] = "2";
global._fhinputKeys[51] = "3";
global._fhinputKeys[52] = "4";
global._fhinputKeys[53] = "5";
global._fhinputKeys[54] = "6";
global._fhinputKeys[55] = "7";
global._fhinputKeys[56] = "8";
global._fhinputKeys[57] = "9";
global._fhinputKeys[48] = "0";
global._fhinputKeys[189] = "-";
global._fhinputKeys[187] = ")";
global._fhinputKeys[vk_backspace] = "Bckspc";
global._fhinputKeys[65] = "A";
global._fhinputKeys[66] = "B";
global._fhinputKeys[67] = "C";
global._fhinputKeys[68] = "D";
global._fhinputKeys[69] = "E";
global._fhinputKeys[70] = "F";
global._fhinputKeys[71] = "G";
global._fhinputKeys[72] = "H";
global._fhinputKeys[73] = "I";
global._fhinputKeys[74] = "J";
global._fhinputKeys[75] = "K";
global._fhinputKeys[76] = "L";
global._fhinputKeys[77] = "M";
global._fhinputKeys[78] = "N";
global._fhinputKeys[79] = "O";
global._fhinputKeys[80] = "P";
global._fhinputKeys[81] = "Q";
global._fhinputKeys[82] = "R";
global._fhinputKeys[83] = "S";
global._fhinputKeys[84] = "T";
global._fhinputKeys[85] = "U";
global._fhinputKeys[86] = "V";
global._fhinputKeys[87] = "W";
global._fhinputKeys[88] = "X";
global._fhinputKeys[89] = "Y";
global._fhinputKeys[90] = "Z";
global._fhinputKeys[219] = ")";
global._fhinputKeys[221] = "]";
global._fhinputKeys[220] = "\\";
global._fhinputKeys[20] = "Capslock";
global._fhinputKeys[186] = ";";
global._fhinputKeys[222] = "'";
global._fhinputKeys[13] = "Enter";
global._fhinputKeys[160] = "L Shift";
global._fhinputKeys[161] = "R Shift";
global._fhinputKeys[162] = "L Ctrl";
global._fhinputKeys[163] = "R Ctol";
global._fhinputKeys[164] = "L Alt";
global._fhinputKeys[165] = "R Alt";
global._fhinputKeys[188] = ",";
global._fhinputKeys[190] = ".";
global._fhinputKeys[191] = "/";
global._fhinputKeys[vk_space] = "Space";
global._fhinputKeys[93] = "Apps";
global._fhinputKeys[vk_insert] = "Insert";
global._fhinputKeys[vk_home] = "Home";
global._fhinputKeys[vk_pageup] = "PageUp";
global._fhinputKeys[vk_delete] = "Delete";
global._fhinputKeys[vk_end] = "End";
global._fhinputKeys[vk_pagedown] = "PageDown";
global._fhinputKeys[144] = "Numlock";
global._fhinputKeys[111] = "Num /";
global._fhinputKeys[106] = "Num *";
global._fhinputKeys[109] = "Num -";
global._fhinputKeys[vk_numpad0] = "Num 0";
global._fhinputKeys[vk_numpad1] = "Num 1";
global._fhinputKeys[vk_numpad2] = "Num 2";
global._fhinputKeys[vk_numpad3] = "Num 3";
global._fhinputKeys[vk_numpad4] = "Num 4";
global._fhinputKeys[vk_numpad5] = "Num 5";
global._fhinputKeys[vk_numpad6] = "Num 6";
global._fhinputKeys[vk_numpad7] = "Num 7";
global._fhinputKeys[vk_numpad8] = "Num 8";
global._fhinputKeys[vk_numpad9] = "Num 9";
global._fhinputKeys[110] = "Num .";
global._fhinputKeys[107] = "Num +";
global._fhinputKeys[vk_left] = "Left";
global._fhinputKeys[vk_right] = "Right";
global._fhinputKeys[vk_up] = "Up";
global._fhinputKeys[vk_down] = "Down";

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

var machineGunAmmo = new Ammo(
	SpriteAmmo01,
	2,
	10,
	c_white,
	0.2,
	0.4,
	global.sounds.ammo.machineGun[
		irandom(array_length(global.sounds.ammo.machineGun)-1)
	]
);

global.machineGuns = [
	new MachineGun(
		machineGunAmmo,
		8,
		180,
		0,
		0
	)
];

global.tanks = [
	new Vehicle(SpriteTank01,2,0.1,1.9,global.ammo[0],1,300,50,400,90,100,SoundTankEngine01,0,-1),
	new Vehicle(SpriteTank02,2.2,0.15,2,global.ammo[1],2,250,70,420,105,400,SoundTankEngine02,0,-1),
	new Vehicle(SpriteTank03,1.9,0.09,1.6,global.ammo[2],5,350,150,460,120,2000,SoundTankEngine03,0,-1),
	new Vehicle(SpriteTank04,1.75,0.08,1.3,global.ammo[3],3,400,200,500,150,4000,SoundTankEngine04,0,-1)
];

global.trucks = [
	new Vehicle(SpriteJeep01,3,0.2,1.9,machineGunAmmo,8,200,20,500,180,60,SoundJeepEngine01,0,SpriteTruckCannon),
	new Vehicle(SpriteJeep02,3.1,0.21,1.91,machineGunAmmo,9,190,25,520,180,80,SoundJeepEngine01,0,SpriteTruckCannon),
	new Vehicle(SpriteJeep03,3.2,0.22,1.95,machineGunAmmo,10,180,30,540,180,100,SoundJeepEngine01,0,SpriteTruckCannon),
	new Vehicle(SpriteTruck01,2.8,0.2,1.9,machineGunAmmo,12,180,50,500,160,200,SoundTruckEngine01,0,SpriteTruckCannon),
	new Vehicle(SpriteTruck02,2.8,0.4,1.9,machineGunAmmo,14,160,80,450,160,300,SoundTruckEngine02,0,SpriteTruckCannon),
];

global.player1.vehicleIndex = 3;
global.player1.vehicle = json_parse(json_stringify(global.tanks[global.player1.vehicleIndex]));
global.player2.vehicleIndex = 0;
global.player2.vehicle = json_parse(json_stringify(global.tanks[global.player2.vehicleIndex]));

global.prizes = [
	{
		sprite: SpriteStar,
		color: c_red,
		script: prize_star,
		sound: SoundPrizeTaken
	},
	{
		sprite: SpriteWrench,
		color: c_green,
		script: prize_health,
		sound: SoundPrizeTaken
	},
	{
		sprite: SpriteSpeedUp,
		color: c_orange,
		script: prize_speed,
		sound: SoundPrizeTaken
	},
	{
		sprite: SpriteGrenade,
		color: c_silver,
		script: prize_blow_all,
		sound: SoundPrizeTaken
	},
	{
		sprite: SpriteClock,
		color: c_yellow,
		script: prize_freeze_all,
		sound: SoundPrizeTaken
	},
	{
		sprite: SpriteHelmet,
		color: c_ltgrey,
		script: prize_invulnerability,
		sound: SoundPrizeTaken
	},
	{
		sprite: SpriteTank,
		color: c_teal,
		script: prize_life,
		sound: SoundExtraLife
	},
	{
		sprite: SpriteInvisibility,
		color: c_ltgrey,
		script: prize_invisibility,
		sound: SoundPrizeTaken
	},
	{
		sprite: SpriteMachineGun,
		color: make_color_rgb(192,0,0),
		script: prize_machine_gun,
		sound: SoundPrizeTaken
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

global.stageNumber			= 1;

global.disableEnemies		= false;
global.enemyFriendlyFire	= false;
global.playerNumber			= 1;