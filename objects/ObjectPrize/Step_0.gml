/// @description Insert description here

image_alpha	= approach(image_alpha,alpha,alphaStep);
image_blend = prize.color;

image_xscale = approach(image_xscale,scale,scaleStep);
image_yscale = approach(image_yscale,scale,scaleStep);

if (image_alpha == toAlpha) alpha = fromAlpha;
if (image_alpha == fromAlpha) alpha = toAlpha;

if (image_xscale == toScale) scale = fromScale;
if (image_xscale == fromScale) scale = toScale;
