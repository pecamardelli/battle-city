/// @description Insert description here

show_debug_message("Event = " + async_load[? "event_type"]);        // Debug code so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch (async_load[? "event_type"]) {
	case "gamepad discovered":  
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
		
		break;
}
