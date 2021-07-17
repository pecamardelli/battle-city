/// @description Insert description here

if (status == STATUS_HEALTHY) {
	if (other.hit == id && !invulnerable) {
		hp -= other.hp;
		other.hit = undefined;
		other.creator.data.stats.shotsLanded++;
		
		if (hp <= 0) {
			other.creator.data.stats.enemiesKilled++;
			other.creator.data.stats.totalPoints += vehicle.points;
		}
	}
}
