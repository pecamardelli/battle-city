/// @description Insert description here
draw_set_font(font_arial_black_48);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(room_width/2,room_height/6,"STAGE " + string(currentStage) + " STATS",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha);

var columnWidth	= 500;
var columnNumber = global.playerNumber;
var columnSeparation = (room_width - columnNumber*columnWidth) / (columnNumber + 1);
var xPos = columnSeparation;
var yPos = room_height/3;
var rowSeparation = 50;

draw_set_font(font_arial_black_24);
draw_text_color(xPos + columnWidth/2,yPos,"Player 1 stats",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_set_halign(fa_left);

draw_text_color(xPos,yPos,"Total points:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Total shots:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Shots landed:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Enemies killed:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Lives lost:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Shots taken:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Total prizes:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Friendly shots:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Friendly kills:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,"Distance covered:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha);


draw_set_halign(fa_right);
var xPos = columnSeparation + columnWidth;
var yPos = room_height/3;

draw_text_color(xPos,yPos,string(global.player1.stats.totalPoints),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.totalShots),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.shotsLanded),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.enemiesKilled),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.timesKilled),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.shotsTaken),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.totalPrizes),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.friendlyShots),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.friendlyKills),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
draw_text_color(xPos,yPos,string(global.player1.stats.totalDistance),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha);

if (global.playerNumber == 2) {
	var xPos = columnWidth + columnSeparation*2;
	var yPos = room_height/3;
	var rowSeparation = 50;
	
	draw_set_halign(fa_center);
	draw_text_color(xPos + columnWidth/2,room_height/6,"Player 2 stats",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	
	draw_set_halign(fa_left);

	draw_text_color(xPos,yPos,"Total points:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Total shots:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Shots landed:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Enemies killed:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Lives lost:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Shots taken:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Total prizes:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Friendly shots:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Friendly kills:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,"Distance covered:",c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha);


	draw_set_halign(fa_right);

	draw_text_color(xPos,yPos,string(global.player2.stats.totalPoints),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.totalShots),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.shotsLanded),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.enemiesKilled),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.timesKilled),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.shotsTaken),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.totalPrizes),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.friendlyShots),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.friendlyKills),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha); yPos += rowSeparation;
	draw_text_color(xPos,yPos,string(global.player2.stats.totalDistance),c_ltgrey,c_ltgrey,c_ltgrey,c_ltgrey,alpha);
}