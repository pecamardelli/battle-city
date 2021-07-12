/// @description Insert description here

if (global.enemyFriendlyFire) {
	if (status == STATUS_HEALTHY) {
		if (other.hit == id && !invulnerable) {
			hp -= other.hp;
			other.hit = undefined;
		}
	}
}