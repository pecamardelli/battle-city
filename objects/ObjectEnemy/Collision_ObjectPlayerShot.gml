/// @description Insert description here

if (status == STATUS_HEALTHY) {
	if (!other.exploding) hp -= other.hp;
}
else instance_destroy();

if (hp <= 0) {
	status = STATUS_OUT_OF_COMBAT;
	image_blend	= make_color_rgb(
		irandom_range(7,14),
		irandom_range(7,14),
		irandom_range(7,14)
	);
	hspeed	= 0;
	vspeed	= 0;
	var crater		= instance_create_depth(x,y+20,depth+1,ObjectCrater);
	var explosion	= instance_create_depth(x,y+20,depth-5,ObjectExplosion);
}
