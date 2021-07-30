// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerData() constructor {
	input		= undefined;
	mouseAim	= undefined;
	padIndex	= undefined;
	
	keys = {
		keyboard: {
			up:		undefined,
			down:	undefined,
			left:	undefined,
			right:	undefined,
		
			fire1:	undefined,
			fire2:	undefined,
			fire3:	undefined,
			fire4:	undefined,
		
			accel:	 undefined,
			brake:	 undefined,
			reverse: undefined,
		
			start:	undefined,
			select:	undefined,
		},
		pad: {
			up:		undefined,
			down:	undefined,
			left:	undefined,
			right:	undefined,
		
			fire1:	undefined,
			fire2:	undefined,
			fire3:	undefined,
			fire4:	undefined,
		
			accel:	 undefined,
			brake:	 undefined,
			reverse: undefined,
		
			start:	undefined,
			select:	undefined,
		}
	};
	
	stats			= new PlayerStats();
	vehicle			= undefined;
	vehicleIndex	= undefined;
	machineGun		= undefined;
	machineGunIndex	= undefined;
	tanks			= 3;
}