/// @description Insert description here

if (instance_number(ObjectEnemy) < 10) {
	//create_enemy();
	instance_create_depth(room_width/10*irandom_range(1,9),80,-100,ObjectPlasmaBall);
	alarm_set(0,room_speed*5);
}