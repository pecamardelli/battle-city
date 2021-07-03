/// @description Insert description here

logoY		= approach(logoY, logoYFinal, 2);
logoAlpha	= approach(logoAlpha, 1, 0.01);

if (logoAlpha == 1 && logoY == logoYFinal) {
	menuEntryAlpha	= approach(menuEntryAlpha, 1, 0.01);
	menuSelectorY	= approach(menuSelectorY,menuSelectorInitialY + menuEntrySeparation * menuEntryPosition, 5);
}
