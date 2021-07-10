// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_keys() {
	if(is_undefined(data)) return;
	
	var keys = variable_struct_get(data, "keys");
	
	if(is_undefined(keys)) return;
	
	if(!is_undefined(keys.left))  left	= keyboard_check(keys.left);
	if(!is_undefined(keys.right)) right	= keyboard_check(keys.right);
	if(!is_undefined(keys.up))	  up	= keyboard_check(keys.up);
	if(!is_undefined(keys.down))  down	= keyboard_check(keys.down);

	if(!is_undefined(keys.fire1)) fire1	= keyboard_check(keys.fire1);
	if(!is_undefined(keys.fire2)) fire2	= keyboard_check(keys.fire2);
	if(!is_undefined(keys.fire3)) fire3	= keyboard_check(keys.fire3);
	if(!is_undefined(keys.fire4)) fire4	= keyboard_check(keys.fire4);
	
	if(!is_undefined(keys.start)) start		= keyboard_check(keys.start);
	if(!is_undefined(keys.select)) select	= keyboard_check(keys.select);
	
	if(!is_undefined(keys.accel)) accel		= keyboard_check(keys.accel);
	if(!is_undefined(keys.brake)) brake		= keyboard_check(keys.brake);
	if(!is_undefined(keys.reverse)) reverse	= keyboard_check(keys.reverse);
	
	//if (array_length(global.pads) > 0)
}