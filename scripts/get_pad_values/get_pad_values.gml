// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_pad_values(padIndex) {
	if (is_nan(padIndex)) return;
	//if (padIndex >= array_length(global.pads)) return;
	
	if (gamepad_button_check(padIndex,gp_padu)) up		= true;
	if (gamepad_button_check(padIndex,gp_padd)) down	= true;
	if (gamepad_button_check(padIndex,gp_padl)) left	= true;
	if (gamepad_button_check(padIndex,gp_padr)) right	= true;
	
	if (gamepad_button_check(padIndex,gp_face1)) fire1	= true;
	if (gamepad_button_check(padIndex,gp_face2)) fire2	= true;
	if (gamepad_button_check(padIndex,gp_face3)) fire3	= true;
	if (gamepad_button_check(padIndex,gp_face4)) fire4	= true;
	
	if (gamepad_button_check(padIndex,gp_shoulderr)) accel	 = true;
	if (gamepad_button_check(padIndex,gp_shoulderl)) reverse = true;
}