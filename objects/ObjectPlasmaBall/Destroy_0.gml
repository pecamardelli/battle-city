/// @description Insert description here

if (!is_undefined(object)) {
	object.invulnerable = false;
	object.enabled = true;
}

if (instance_exists(ObjectBattleField)) {
	switch (createScript) {
		case create_enemy: ObjectBattleField.tankNumber--; break;
	}
}
