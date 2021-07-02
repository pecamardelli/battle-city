/// @description Insert description here

with (ObjectPlayer) {
	if (place_meeting(x,y,other)) {
		if (x < other.x) x += sign(x-other.x)*hspeed;
		else x -= sign(x-other.x)*hspeed;
		
		if(y < other.y) y += sign(y-other.y)*vspeed;
		else y -= sign(y-other.y)*vspeed;
	}
}