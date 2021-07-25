// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_health(){
	hp += 50;
	if (hp > data.vehicle.hp) hp = data.vehicle.hp;
}