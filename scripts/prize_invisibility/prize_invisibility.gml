// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prize_invisibility(){
	invisible		= true;
	toAlpha			= INVISIBILITY_ALPHA;
	customScript	= get_visible;
	alarm_set(11,room_speed*INVISIBILITY_TIME);
}

function get_visible() {
	invisible	= false;
	toAlpha		= 1;
}