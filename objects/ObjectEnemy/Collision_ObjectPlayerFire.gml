/// @description Insert description here

if (status == STATUS_HEALTHY) {
	if (other.hit == id && !invulnerable) {
		hp -= other.hp;
		other.hit = undefined;
		if(instance_exists(other.creator)) other.creator.data.stats.shotsLanded++;
		
		if (hp <= 0) {
			if(instance_exists(other.creator)) {
				add_to_stats(other.playerNumber,"enemiesKilled",1);
				add_to_stats(other.playerNumber,"totalPoints",vehicle.points);
			}
		}
	}
}
