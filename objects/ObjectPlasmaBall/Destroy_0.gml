/// @description Insert description here

if (!is_undefined(object)) object.invulnerable = false;
if (createScript == create_enemy && instance_exists(ObjectBattleField))
	ObjectBattleField.stageData.vehicleNumber--;
