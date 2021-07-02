/// @description Insert description here

global.player1.visible = true;

instance_create_depth(
	irandom(room_width - global.wallThickness * 2),
	irandom(room_height - global.wallThickness * 2),
	0,
	ObjectRock
);