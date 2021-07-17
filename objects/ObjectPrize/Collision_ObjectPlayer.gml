/// @description Insert description here

if (!is_undefined(prize.script)) {
	with (other) {
		script_execute(other.prize.script);
		data.stats.totalPrizes++;
	}
}

instance_destroy();
