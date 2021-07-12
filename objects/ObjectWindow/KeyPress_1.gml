/// @description Insert description here
if (!is_undefined(playerKeySet) && !close) {
	variable_struct_set(playerKeySet,keyName, keyboard_lastkey);
	close = true;
}