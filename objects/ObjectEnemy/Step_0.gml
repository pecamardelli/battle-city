/// @description Insert description here

if (global.disableEnemies) enabled = false;

if (hp <= 0) status = STATUS_OUT_OF_COMBAT;

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
		if (nearestTargetDistance <= data.vehicle.engageDistance &&
			angleDifference <= data.vehicle.engageMaxAngle/2 &&
			!nearestTarget.invisible)
				ai_engage_target();
		else moveScript();
	}
	else moveScript();
	if (is_undefined(engineSound)) engineSound = audio_play_sound_on(soundEmitter,data.vehicle.engineSound,true,1);
	
	key_actions();
}
else speed = approach(speed,0,0.1);

if (hasPrize) {
	image_blend	= merge_color(c_white,c_red,blendAmount);
	blendAmount = approach(blendAmount,toBlendAmount,0.04);
	if (blendAmount == 0.8) toBlendAmount = 0;
	else if (blendAmount == 0) toBlendAmount = 0.8;
}

image_angle = direction;
audio_emitter_position(soundEmitter,x,y,0);
audio_emitter_gain(soundEmitter, lerp(0.6,0.8,speed/data.vehicle.speed));
audio_emitter_pitch(soundEmitter, lerp(0.8,1.2,speed/data.vehicle.speed));
stay_in_room_bounds();