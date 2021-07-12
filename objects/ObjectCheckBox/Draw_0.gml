/// @description Insert description here

draw_self();

draw_roundrect_color_ext(x,y,x+width,y+height,10,10,color,color,false);
draw_roundrect_color_ext(x+5,y+5,x+width-5,y+height-5,10,10,c_black,c_black,false);

if (tildeAplha > 0) draw_sprite_ext(SpriteTilde,0,x+width/2,y+height/2,0.75,0.75,0,c_white,tildeAplha);