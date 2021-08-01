/// @description Insert description here

if (!is_undefined(object)) {
	object.invulnerable = false;
	object.enabled = true;
}

if (createScript == create_enemy && instance_exists(ObjectBattleField)) ObjectBattleField.vehicleNumber--;
