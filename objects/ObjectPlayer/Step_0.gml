/// @description Insert description here

if (status == STATUS_OUT_OF_COMBAT) {	
	instance_create_depth(x,y+20,depth-1,ObjectExplosion);
	instance_destroy();
}

init_keys();
get_keys();
key_actions();