// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_star(){
	data.vehicle.maxBurst++;
	data.vehicle.burstInterval *= 0.95;
	data.vehicle.ammo.speed *= 1.05;
	data.vehicle.ammo.hp *= 1.05;
}