/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_arial_black_48);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_sprite_ext(SpriteLogo,0,logoX,logoY,1,1,0,c_white,logoAlpha);

if (logoAlpha == 1 && logoY == logoYFinal) {
	draw_sprite_ext(SpriteMenuOne,0,menuEntryX,menuEntryY,menuEntryScale,menuEntryScale,0,c_white,menuEntryAlpha);
	draw_sprite_ext(SpritePlayerGame,0,menuEntryX+60,menuEntryY,menuEntryScale,menuEntryScale,0,c_white,menuEntryAlpha);
	draw_sprite_ext(SpriteMenuTwo,0,menuEntryX,menuEntryY+menuEntrySeparation,menuEntryScale,menuEntryScale,0,c_white,menuEntryAlpha);
	draw_sprite_ext(SpritePlayerGame,0,menuEntryX+60,menuEntryY+menuEntrySeparation,menuEntryScale,menuEntryScale,0,c_white,menuEntryAlpha);
	draw_sprite_ext(menuSelectorSprite,0,menuSelectorX,menuSelectorY,0.33,0.33,-90,c_white,menuEntryAlpha);
}