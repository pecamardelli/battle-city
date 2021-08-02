/// @description Insert description here

var tankPercent = tankNumber/(STAGE_TANK_NUMBER + 0.5 * global.stageNumber)*100;
if (instance_number(ObjectEnemyTruck) < truckConcurrency && tankPercent <= truckStartingPoint) {
	var truck = instance_create_depth(irandom_range(-100,room_width + 100),-100,-100,ObjectPlasmaBall);
	truck.createScript = create_truck;
}

if (tankNumber > 0) alarm_set(2,room_speed*truckInterval*random_range(0.8,1.2));