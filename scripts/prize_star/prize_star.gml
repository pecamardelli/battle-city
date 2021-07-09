// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_star(){
	vehicle.maxBurst++;
	vehicle.burstInterval *= 0.9;
	vehicle.ammo.speed *= 1.1;
	vehicle.ammo.hp *= 1.1;
}