/// @description Insert description here

if (x < other.x) x += sign(x-other.x)*hspeed-1;
else x -= sign(x-other.x)*hspeed-1;
		
if(y < other.y) y += sign(y-other.y)*vspeed-1;
else y -= sign(y-other.y)*vspeed-1;