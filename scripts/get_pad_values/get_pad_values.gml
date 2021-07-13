// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_pad_values(padIndex, keys) {
	if (is_nan(padIndex)) return;
	//if (padIndex >= array_length(global.pads)) return;
	
	if (!is_undefined(keys.pad.left))  left	 = gamepad_button_check(padIndex,keys.pad.left);
	if (!is_undefined(keys.pad.right)) right = gamepad_button_check(padIndex,keys.pad.right);
	if (!is_undefined(keys.pad.up))	   up	 = gamepad_button_check(padIndex,keys.pad.up);
	if (!is_undefined(keys.pad.down))  down  = gamepad_button_check(padIndex,keys.pad.down);
	
	if (!is_undefined(keys.pad.fire1)) fire1 = gamepad_button_check(padIndex,keys.pad.fire1);
	if (!is_undefined(keys.pad.fire2)) fire2 = gamepad_button_check(padIndex,keys.pad.fire2);
	if (!is_undefined(keys.pad.fire3)) fire3 = gamepad_button_check(padIndex,keys.pad.fire3);
	if (!is_undefined(keys.pad.fire4)) fire4 = gamepad_button_check(padIndex,keys.pad.fire4);
	
	if (!is_undefined(keys.pad.accel))	 accel	 = gamepad_button_check(padIndex,keys.pad.accel);
	if (!is_undefined(keys.pad.reverse)) reverse = gamepad_button_check(padIndex,keys.pad.reverse);
	
	if (!is_undefined(keys.pad.start))	start  = gamepad_button_check(padIndex,keys.pad.start);
	if (!is_undefined(keys.pad.select)) select = gamepad_button_check(padIndex,keys.pad.select);
}