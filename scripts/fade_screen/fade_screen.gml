/// @description Fade screen
/// @param mode
/// @param fadeTime
/// @param finishScript
/// @param onFinishGoToRoom
function fade_screen(mode, fadeTime, finishScript, onFinishGoToRoom) {
	if (instance_exists(ObjectFadeScreen)) return;
	var fader				= instance_create_depth(0,0,-1000,ObjectFadeScreen);
	fader.fadeTime			= fadeTime;
	fader.finishScript		= finishScript;
	fader.onFinishGoToRoom	= onFinishGoToRoom;
	
	switch (mode) {
		case FADE_IN:
			fader.image_alpha	= 1;
			fader.toAlpha		= 0;
			break;
		case FADE_OUT:
			fader.image_alpha = 0;
			fader.toAlpha	= 1;
			break;
	}
}