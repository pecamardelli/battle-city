/// @description Insert description here

if (image_index == image_number -1) instance_destroy();
if (image_index > image_number * 0.6 && is_undefined(flames)) flames = instance_create_depth(x,y,depth+1,ObjectFlames);