/// @description Insert description here

show_debug_message("Event = " + async_load[? "event_type"]);        // Debug code so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch (async_load[? "event_type"]) {
	case "gamepad discovered": 
		if (global.player1.input == INPUT_JOYSTICK && is_undefined(global.player1.padIndex)) {
			global.player1.padIndex = async_load[? "pad_index"];
			show_debug_message("Pad " + string(async_load[? "pad_index"]) + " assigned to player 1");
		}
		else if (global.player2.input == INPUT_JOYSTICK && is_undefined(global.player2.padIndex)) {
			global.player2.padIndex = async_load[? "pad_index"];
			show_debug_message("Pad " + string(async_load[? "pad_index"]) + " assigned to player 2");
		}
		else {
			var padFound = false;

			for(var i=0;i<array_length(global.pads);i++) {
				if (global.pads[i] == async_load[? "pad_index"]) {
					padFound = true;
					break;
				}
			}

			if (!padFound) {
				gamepad_set_button_threshold(async_load[? "pad_index"], 0.1);
				array_push(global.pads, async_load[? "pad_index"]);
			}
		}
		
		break;
}
