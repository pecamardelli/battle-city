// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function config_key_window(){
	var windowX			= room_width/2;
	var windowY			= room_height/2;
	var windowWidth		= 400;
	var windowHeight	= 100;
	
	var window			= instance_create_depth(windowX,windowY,depth-1,ObjectWindow);
	window.width		= windowWidth;
	window.height		= windowHeight;
	window.caption		= "ENTER " + string_upper(keyName) + " KEY";
	window.player		= player;
	window.keyName		= keyName;
	show_debug_message(player.padIndex)
	switch (player.input) {
		case INPUT_KEYBOARD: window.stepAction = getKeyboardInput; break;
		case INPUT_JOYSTICK: window.stepAction = getPadInput; break;
	}
}

function getKeyboardInput() {
	if (!is_undefined(player) && !close) {
		if (keyboard_check(vk_anykey)) {
			variable_struct_set(player.keys.keyboard,keyName,keyboard_lastkey);
			close = true;
		}
	}
}

function getPadInput() {
	var value = undefined;
	if (gamepad_button_check(player.padIndex,gp_padu)) value = gp_padu;
	else if (gamepad_button_check(player.padIndex,gp_padd)) value = gp_padd;
	else if (gamepad_button_check(player.padIndex,gp_padl)) value = gp_padl;
	else if (gamepad_button_check(player.padIndex,gp_padr)) value = gp_padr;
	else if (gamepad_button_check(player.padIndex,gp_face1)) value = gp_face1;
	else if (gamepad_button_check(player.padIndex,gp_face2)) value = gp_face2;
	else if (gamepad_button_check(player.padIndex,gp_face3)) value = gp_face3;
	else if (gamepad_button_check(player.padIndex,gp_face4)) value = gp_face4;
	else if (gamepad_button_check(player.padIndex,gp_shoulderl)) value = gp_shoulderl;
	else if (gamepad_button_check(player.padIndex,gp_shoulderlb)) value = gp_shoulderlb;
	else if (gamepad_button_check(player.padIndex,gp_shoulderr)) value = gp_shoulderr;
	else if (gamepad_button_check(player.padIndex,gp_shoulderrb)) value = gp_shoulderrb;
	else if (gamepad_button_check(player.padIndex,gp_start)) value = gp_start;
	else if (gamepad_button_check(player.padIndex,gp_select)) value = gp_select;
	
	if (!is_undefined(value)) {
		variable_struct_set(player.keys.pad,keyName,value);
		close = true;
	}
}