// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_keys() {
	if(is_undefined(data)) return;
	
	var keys = variable_struct_get(data, "keys");
	
	if(is_undefined(keys)) return;
	
	if(!is_undefined(keys.keyboard.left))  left	= keyboard_check(keys.keyboard.left);
	if(!is_undefined(keys.keyboard.right)) right	= keyboard_check(keys.keyboard.right);
	if(!is_undefined(keys.keyboard.up))	  up	= keyboard_check(keys.keyboard.up);
	if(!is_undefined(keys.keyboard.down))  down	= keyboard_check(keys.keyboard.down);

	if(!is_undefined(keys.keyboard.fire1)) fire1	= keyboard_check(keys.keyboard.fire1);
	if(!is_undefined(keys.keyboard.fire2)) fire2	= keyboard_check(keys.keyboard.fire2);
	if(!is_undefined(keys.keyboard.fire3)) fire3	= keyboard_check(keys.keyboard.fire3);
	if(!is_undefined(keys.keyboard.fire4)) fire4	= keyboard_check(keys.keyboard.fire4);
	
	if(!is_undefined(keys.keyboard.start)) start	= keyboard_check(keys.keyboard.start);
	if(!is_undefined(keys.keyboard.select)) select	= keyboard_check(keys.keyboard.select);
	
	if(!is_undefined(keys.keyboard.accel)) accel		= keyboard_check(keys.keyboard.accel);
	if(!is_undefined(keys.keyboard.brake)) brake		= keyboard_check(keys.keyboard.brake);
	if(!is_undefined(keys.keyboard.reverse)) reverse	= keyboard_check(keys.keyboard.reverse);
	
	//if (array_length(global.pads) > 0)
}