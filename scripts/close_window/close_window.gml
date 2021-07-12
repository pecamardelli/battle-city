// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function close_window(){
	if (!is_undefined(parent)) {
		//with (ObjectWindow) if (id == other.parent) instance_destroy();
		parent.close = true;
	}
}