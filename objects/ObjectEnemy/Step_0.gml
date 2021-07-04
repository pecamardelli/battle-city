/// @description Insert description here

init_keys();

nearestTarget = instance_nearest(x,y,ObjectPlayer);
nearestTargetDistance = point_distance(x,y,nearestTarget.x,nearestTarget.y);

if (nearestTargetDistance < irandom_range(500,700)) ai_engage_target();
else moveScript();

key_actions();