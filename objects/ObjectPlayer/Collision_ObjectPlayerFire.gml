/// @description Insert description here

if (global.friendlyFire) {
	if (status == STATUS_HEALTHY) {
		if (other.hit == id && !invulnerable) {
			hp -= other.hp;
			x += cos(other.image_angle*pi/180) * other.hp / 10;
			y -= sin(other.image_angle*pi/180) * other.hp / 10;
			other.hit = undefined;
			add_to_stats(other.playerNumber,"friendlyShots",1);

			if (hp <= 0) {
				status = STATUS_OUT_OF_COMBAT;
				if(instance_exists(other.creator)) other.creator.data.stats.friendlyKills++;
				add_to_stats(number,"timesKilled",1);
			}
		}
	}
}