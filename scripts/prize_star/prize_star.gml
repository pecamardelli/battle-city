// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_star(){
	data.vehicle.maxBurst += 0.5;
	data.vehicle.burstInterval *= 0.97;
	data.vehicle.ammo.speed *= 1.03;
	data.vehicle.ammo.hp *= 1.03;
	data.vehicle.stage++;
}