/// @description Insert description here

draw_roundrect_color_ext(
	x - width/2,
	y - height/2,
	x + width/2,
	y + height/2,
	xRadius,
	yRadius,
	bgColor,
	bgColor,
	false
);

var yPos = y - height/2 + padding;

for(var j=0;j<array_length(frames);j++){
	if(!is_undefined(frames[j].backgroundColor)) {
		draw_roundrect_color_ext(
			x - _framesWidth[j]/2 + padding,
			yPos,
			x + _framesWidth[j]/2 - padding,
			yPos + _framesHeight[j],
			xRadius * 0.9,
			yRadius * 0.9,
			frames[j].backgroundColor,
			frames[j].backgroundColor,
			false
		);
	}
	
	if(height == maxHeight){
		if(!is_undefined(frames[j].backgroundSprite)){
			draw_sprite(
				frames[j].backgroundSprite,
				0,
				x - _framesWidth[j]/2 + padding,
				yPos
			);
		}
		
		if(variable_struct_exists(frames[j], "drawScript") && !is_undefined(frames[j].drawScript)){
			script_execute(frames[j].drawScript);
		}
		
		if(variable_struct_exists(frames[j], "texts") && array_length(frames[j].texts) > 0){
			for(var n=0;n<array_length(frames[j].texts);n++){
				//draw_text_init(
				//	frames[j].texts[n].font,
				//	frames[j].texts[n].halign,
				//	frames[j].texts[n].valign
				//);
				draw_text_color(
					frames[j].texts[n].x,
					frames[j].texts[n].y,
					frames[j].texts[n].text,
					frames[j].texts[n].color,
					frames[j].texts[n].color,
					frames[j].texts[n].color,
					frames[j].texts[n].color,
					1
				);
			}
		}
	}
	
	if(frames[j].backgroundColor != frames[j].color){
		for(var i=0;i<frames[j].thickness;i++){
			draw_roundrect_color_ext(
				x - _framesWidth[j]/2 + padding + i/1.5,
				yPos + i/1.5,
				x + _framesWidth[j]/2 - padding - i/1.5,
				yPos + _framesHeight[j] - i/1.5,
				xRadius * 0.9,
				yRadius * 0.9,
				frames[j].color,
				frames[j].color,
				true
			);
		}
	}
	
	if(frameMargin > 0) yPos += frameMargin + _framesHeight[j];
	else yPos += _framesHeight[j] - frames[j].thickness/1.5;
}
