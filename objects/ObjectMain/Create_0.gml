/// @description Insert description here
randomize();
global.tanks	= [
	new Tank(SpriteTank01,3,0.1,2,undefined,1,1000)
];

global.player1	= instance_create_depth(room_width/2,room_height-100,0,ObjectPlayer);
global.player1.sprite_index	= global.player1.tank.sprite;

global.wallThickness = 10;