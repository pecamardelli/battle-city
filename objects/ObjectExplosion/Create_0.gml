/// @description Insert description here

sprite_index	= global.explosions[irandom(array_length(global.explosions)-1)];
scale			= random_range(0.6,1);
image_xscale	= scale;
image_yscale	= scale * random_range(0.6,1);

var crater		= instance_create_depth(x,y+20,-1,ObjectCrater);
flames			= undefined;
