// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_random_point(){
	return {
		xCoord: random_range(MIN_WALL_DISTANCE*1.5,room_width - MIN_WALL_DISTANCE*1.5),
		yCoord: random_range(MIN_WALL_DISTANCE*1.5,room_height - MIN_WALL_DISTANCE*1.5)
	};
}