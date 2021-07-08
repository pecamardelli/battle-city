/// @description Insert description here

if (status == STATUS_HEALTHY) {
	if (other.hit == id && !invulnerable) {
		hp -= other.hp;
		other.hit = undefined;
	}
}
if (hp <= 0) status = STATUS_OUT_OF_COMBAT;