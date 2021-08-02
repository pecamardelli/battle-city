/// @description Insert description here

var allEnemiesKilled = tankNumber == 0 && instance_number(ObjectEnemy) == 0;

if (allEnemiesKilled && alarm_get(1) == -1) alarm_set(1,room_speed*6);

