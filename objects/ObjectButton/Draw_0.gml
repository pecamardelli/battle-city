/// @description Insert description here

draw_self();

draw_roundrect_color_ext(x,y,x+width,y+height,10,10,color,color,false);
draw_roundrect_color_ext(x+5,y+5,x+width-5,y+height-5,10,10,c_black,c_black,false);

draw_set_font(font_arial_12);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_transformed_color(x+width/2,y+height/2+2,caption,20,200,1,1,0,c_white,c_white,c_white,c_white,image_alpha);