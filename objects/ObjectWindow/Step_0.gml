/// @description Insert description here

currentWidth	= approach(currentWidth,width,50);
currentHeight	= approach(currentHeight,height,50);

if (level < instance_number(ObjectWindow)) enabled = false;
else enabled = true;

if (!is_undefined(stepAction)) script_execute(stepAction);

if (close) {
	width = 0;
	height = 0;
	with (ObjectButton) if (parent == other.id) instance_destroy();
}

if (currentWidth == width) with (ObjectButton) if (parent == other.id) visible = true;

if ((currentWidth == 0 || currentHeight == 0) && close) instance_destroy();