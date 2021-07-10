/// @description Insert description here
// You can write your code in this editor
logoX		= room_width/2;
logoY		= room_height/2;
logoYFinal	= logoY - 200;
logoAlpha	= 0;

menuEntryX			= room_width/2 - 100;
menuEntryY			= room_height/2 + 50;
menuEntryAlpha		= 0;
menuEntryScale		= 1.3;
menuEntryPosition	= 0;
menuEntrySeparation	= 80;
menuEntryNumber		= 2;

menuSelectorInitialY	= menuEntryY + sprite_get_height(SpriteTank01) / 7;
menuSelectorX			= menuEntryX - menuEntrySeparation;
menuSelectorY			= menuSelectorInitialY;
menuSelectorSprite		= SpriteTank01;
