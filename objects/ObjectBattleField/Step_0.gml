/// @description Insert description here

if (!is_undefined(stageData)) {
	if (stageData.vehicleNumber == 0 && instance_number(ObjectEnemy) == 0 && alarm_get(1) == -1) alarm_set(1,room_speed*6);
}

