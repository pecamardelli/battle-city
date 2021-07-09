// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_star(){
	vehicle.maxBurst++;
	vehicle.burstInterval *= 0.95;
	vehicle.ammo.speed *= 1.05;
	vehicle.ammo.hp *= 1.05;
}