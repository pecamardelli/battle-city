/// @description approach(var, limit, inc)
/// @param variable
/// @param limit
/// @param increment
function approach(variable, limit, increment) {
	if(variable < limit) return min(variable + increment, limit);
	else return max(variable - increment, limit);
}
