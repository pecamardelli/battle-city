/// @description Insert description here

if (instance_number(ObjectEnemy) < vehicleConcurrency) {
	if (vehicleNumber > 0) instance_create_depth(room_width/10*irandom_range(1,9),80,-100,ObjectPlasmaBall);
}

alarm_set(0,room_speed*vehicleInterval);