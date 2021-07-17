// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_to_stats(playerNumber,statKey,amount) {
	if (playerNumber == 1) var playerStats = global.player1.stats;
	else var playerStats = global.player2.stats;

	var stat = variable_struct_get(playerStats, statKey);
	if (!is_undefined(stat)) variable_struct_set(playerStats, statKey, stat + amount);
}