// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_date(){
	var date = "";
	
	if (current_day < 10) date += "0";
	date += string(current_day) + "/";
	
	if (current_month < 10) date += "0";
	date += string(current_month) + "/";
	
	date += string(current_year);
	
	return date;
}