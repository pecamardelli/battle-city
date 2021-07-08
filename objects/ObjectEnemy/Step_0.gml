/// @description Insert description here

if (status == STATUS_OUT_OF_COMBAT) {	
	instance_create_depth(x,y+20,depth-1,ObjectExplosion);
	instance_destroy();
}

if (enabled) {
	init_keys();

	nearestTarget = instance_nearest(x,y,ObjectPlayer);
	if (nearestTarget != noone) {
		var nearestTargetDistance = point_distance(x,y,nearestTarget.x,nearestTarget.y);
		var angleDifference = abs(angle_difference(direction, point_direction(x,y,nearestTarget.x,nearestTarget.y)));
		if (nearestTargetDistance <= vehicle.engageDistance && angleDifference <= vehicle.engageMaxAngle/2) ai_engage_target();
		else moveScript();
	}
	else moveScript();
	
	key_actions();
}

if (hasPrize) {
	image_blend	= merge_color(c_white,c_red,blendAmount);
	blendAmount = approach(blendAmount,toBlendAmount,0.04);
	if (blendAmount == 0.8) toBlendAmount = 0;
	else if (blendAmount == 0) toBlendAmount = 0.8;
}

image_angle = direction;

stay_in_room_bounds();