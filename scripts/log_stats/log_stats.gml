// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function logger(statObject){
	var msg = "[" + get_date() + " " + get_time() + "]";
	msg += type + " " + text;
	
	var filename;
	if (type == LOG_DEBUG) filename = DEBUG_FILE_NAME;
	else filename = LOG_FILE_NAME;
	
	//show_debug_message(date_datetime_string(date_current_datetime()));
	var file = file_text_open_append(working_directory + filename);
	file_text_write_string(file, msg);
	file_text_writeln(file);
	file_text_close(file);
}