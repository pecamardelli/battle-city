/// @description Insert description here

global.tanks	= [
	new Tank(SpriteTank01,3,0.1,1,undefined,1,1)
];

global.player1	= instance_create_depth(room_width/2,room_height-100,0,ObjectPlayer);
global.player1.sprite_index	= global.player1.tank.sprite;