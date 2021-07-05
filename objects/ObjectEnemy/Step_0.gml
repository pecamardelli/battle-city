/// @description Insert description here

if (status == STATUS_OUT_OF_COMBAT) return;

init_keys();

nearestTarget = instance_nearest(x,y,ObjectPlayer);
var nearestTargetDistance = point_distance(x,y,nearestTarget.x,nearestTarget.y);

//if (nearestTargetDistance < irandom_range(500,700)) ai_engage_target();
//else moveScript();
moveScript();
key_actions();