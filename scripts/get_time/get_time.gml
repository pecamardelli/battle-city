// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_time(){
	var time = "";
	
	if (current_hour < 10) time += "0";
	time += string(current_hour) + ":";
	
	if (current_minute < 10) time += "0";
	time += string(current_minute) + ":";
	
	if (current_second < 10) time += "0";
	time += string(current_second);
	
	return time;
}