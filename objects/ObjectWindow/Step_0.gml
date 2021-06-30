/// @description Insert description here

if(is_undefined(maxHeight) && array_length(frames) > 0) {
	maxHeight = 0;
	var totalThickness = 0;
	for(var k=0;k<array_length(frames);k++) {
		maxHeight += frames[k].height;
		framesStep[k] = ceil(frames[k].height/room_speed/(transitionTime/1000));
		totalThickness += frames[k].thickness/1.5;
	}
	
	if (frameMargin > 0) maxHeight += padding * 2 + (array_length(frames)-1) * frameMargin;
	else maxHeight += padding * 2 - totalThickness;
	
	widthStep = ceil(maxWidth/room_speed/(transitionTime/1000));
	heightStep = ceil(maxHeight/room_speed/(transitionTime/1000));
}

if(!is_undefined(maxWidth) && !is_undefined(maxHeight)){
	width = approach(width, maxWidth, widthStep);
	height = approach(height, maxHeight, heightStep);
	
	for(var i=0;i<array_length(frames);i++){
		_framesWidth[i] = approach(_framesWidth[i], maxWidth, widthStep);
		_framesHeight[i] = approach(_framesHeight[i], frames[i].height, framesStep[i]);
	}
}

if(height == maxHeight){
	if(is_array(buttons) && array_length(buttons) > 0){
		for(var n=0;n<array_length(buttons);n++){
			_buttons[n]	= instance_create_depth(
				buttons[n].x,
				buttons[n].y,
				depth-1,
				obj_button
			);
			_buttons[n].sprite_index	= spr_button_black_150x30;
			_buttons[n].caption			= buttons[n].caption;
			_buttons[n].hoverText		= _buttons[n].caption;
			_buttons[n].parent			= id;
			_buttons[n].onClickAction	= buttons[n].onClickAction;
		}
		buttons = undefined;
	}
}

if (close) {
	maxHeight = 0;
	maxWidth = 0;
	for(var k=0;k<array_length(frames);k++) frames[k].height = 0;
}

if (height == 0 && width == 0 && close) instance_destroy();
