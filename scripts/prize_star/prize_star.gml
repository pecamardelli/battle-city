// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_star(){
	data.vehicle.maxBurst += 0.5;
	data.vehicle.burstInterval *= 0.97;
	data.vehicle.ammo.speed *= 1.03;
	data.vehicle.ammo.hp *= 1.03;
	data.vehicle.stage++;
	
	if (data.vehicle.stage == 5 && data.vehicleIndex < array_length(global.tanks) - 1) {
		data.vehicleIndex++;
		data.vehicle = json_parse(json_stringify(global.tanks[data.vehicleIndex]));
		sprite_index	= data.vehicle.sprite;
		hp				= data.vehicle.hp;
		audio_stop_sound(engineSound);
		engineSound		= undefined;
	}
}