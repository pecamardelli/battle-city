var battleField = instance_create_depth(0,0,0,ObjectBattleField);
battleField.stageData = json_parse(json_stringify(global.stageData));
battleField.alarm[0] = room_speed*battleField.stageData.vehicleInterval;

global.disableEnemies = false;
cursor_sprite = -1;

create_player1();

if (global.playerNumber == 2) create_player2();

var rocks = irandom_range(irandom_range(10,15),irandom_range(20,80));

for (var i=0;i<rocks;i++) {
	var rock = instance_create_depth(
		irandom_range(room_width*0.07, room_width*0.93),
		irandom_range(room_height*0.1,room_height*0.9),
		-10,
		ObjectRock
	);
	rock.image_index	= irandom(image_number-1);
	rock.image_xscale	= random_range(0.2,0.5);
	rock.image_yscale	= random_range(0.2,0.5);
	rock.image_angle	= irandom(360);
}

var plants = irandom_range(irandom_range(15,25), irandom_range(30,60));

for (var i=0;i<plants;i++){
	var plant = instance_create_depth(
		irandom_range(room_width*0.05, room_width*0.95),
		irandom_range(room_height*0.05,room_height*0.95),
		-10,
		ObjectPlant
	);
	plant.sprite_index	= SpritePlants;
	plant.image_index	= irandom(image_number-1);
	plant.image_xscale	= random_range(0.2,1);
	plant.image_yscale	= random_range(0.2,1);
	plant.image_angle	= irandom(360);
	plant.image_blend	= merge_color(c_white,c_dkgrey,random(1));
	plant.image_alpha	= random_range(0.4,0.7);
}