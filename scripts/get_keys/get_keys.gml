// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_keys(){
	if(is_undefined(keys)) return;
	
	if(!is_undefined(keys.keyLeft)) keyLeft		= keyboard_check(keys.keyLeft);
	if(!is_undefined(keys.keyRight)) keyRight	= keyboard_check(keys.keyRight);
	if(!is_undefined(keys.keyUp))	keyUp		= keyboard_check(keys.keyUp);
	if(!is_undefined(keys.keyDown)) keyDown		= keyboard_check(keys.keyDown);

	if(!is_undefined(keys.keyFire1)) keyFire1	= keyboard_check(keys.keyFire1);
	if(!is_undefined(keys.keyFire2)) keyFire2	= keyboard_check(keys.keyFire2);
	if(!is_undefined(keys.keyFire3)) keyFire3	= keyboard_check(keys.keyFire3);
	if(!is_undefined(keys.keyFire4)) keyFire4	= keyboard_check(keys.keyFire4);
	
	if(!is_undefined(keys.keyStart)) keyStart	= keyboard_check(keys.keyStart);
	if(!is_undefined(keys.keySelect)) keySelect	= keyboard_check(keys.keySelect);
	
	if(!is_undefined(keys.keyAccel)) keyAccel		= keyboard_check(keys.keyAccel);
	if(!is_undefined(keys.keyBrake)) keyBrake		= keyboard_check(keys.keyBrake);
	if(!is_undefined(keys.keyReverse)) keyReverse	= keyboard_check(keys.keyReverse);
}