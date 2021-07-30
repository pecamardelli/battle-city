// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_machine_gun(){
	var machineGun = variable_struct_get(data, "machineGun");
	
	if (!is_struct(machineGun) || is_undefined(machineGun)) {
		data.machineGun = json_parse(json_stringify(global.machineGuns[0]));
	}
	else {
		machineGun.ammo.hp++;
		machineGun.ammo.speed	 *= 1.05;
		machineGun.ammo.xScale	 *= 1.05;
		machineGun.ammo.yScale	 *= 1.05;
		machineGun.maxBurst++;
		machineGun.burstInterval *= 0.95;
		machineGun.stage++;
	}
}