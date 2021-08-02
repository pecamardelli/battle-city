// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stay_in_room_bounds() {
	if (x < MIN_WALL_DISTANCE - 5 || x > room_width - MIN_WALL_DISTANCE + 5 || y < MIN_WALL_DISTANCE - 5 || y > room_height - MIN_WALL_DISTANCE + 5) return;
	
	if (x < MIN_WALL_DISTANCE) x = MIN_WALL_DISTANCE;
	if (x > room_width - MIN_WALL_DISTANCE) x = room_width - MIN_WALL_DISTANCE;
	if (y < MIN_WALL_DISTANCE) y = MIN_WALL_DISTANCE;
	if (y > room_height - MIN_WALL_DISTANCE) y = room_height - MIN_WALL_DISTANCE;
}