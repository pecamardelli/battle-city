/// @description Insert description here

if (status == STATUS_HEALTHY) {
	if (other.hit == id && !invulnerable) {
		hp -= other.hp;
		x += cos(other.image_angle*pi/180) * other.hp / 10;
		y -= sin(other.image_angle*pi/180) * other.hp / 10;
		other.hit = undefined;
	}
}

if (hp <= 0) status = STATUS_OUT_OF_COMBAT;
