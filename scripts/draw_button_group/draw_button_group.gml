///@arg GroupID
///@arg button_Color 
///@arg mouse_on_button_Color
function draw_button_group(argument0, argument1, argument2) {

	var group = argument0
	ButtonGroup = group[?"button"]
	var MX = device_mouse_x_to_gui(0) 
	var MY = device_mouse_y_to_gui(0) 

	//keyboard
	if( group[?"direction"] == 0 ){
		if(keyboard_check_pressed(vk_left)){
			if(group[?"cursor"]>0){
				group[?"cursor"]-=1
			} 
		}
		if(keyboard_check_pressed(vk_right)){
			if(group[?"cursor"] < array_length_1d(ButtonGroup) -1  ){
				group[?"cursor"]+=1
			} 
		}
	}else if(group[?"direction"] == 1){
		if(keyboard_check_pressed(vk_up)){
			if(group[?"cursor"]>0){
				group[?"cursor"]-=1
			} 
		}
		if(keyboard_check_pressed(vk_down)){
			if(group[?"cursor"] < array_length_1d(ButtonGroup) -1  ){
				group[?"cursor"]+=1
			} 
		}

	}

	//mouse
	for( var i = 0 ; i < array_length_1d(ButtonGroup) ; i++ ){
		var Button = ButtonGroup[i]
		//mouse
		if( MX >= Button[?"x1"] && MX <=Button[?"x2"] && MY >= Button[?"y1"] && MY <= Button[?"y2"]){
			group[?"cursor"] = i
		}
		ButtonGroup[i] = Button
	}
	for( var i = 0 ; i < array_length_1d(ButtonGroup) ; i++ ){
		var Button = ButtonGroup[i]
	
		if(i != group[?"cursor"]) Button[?"cursor"] = 0
		else Button[?"cursor"] = 1
	
		ButtonGroup[i] = Button
	}
	//draw
	for( var i = 0 ; i < array_length_1d(ButtonGroup) ; i++ ){
		var Button = ButtonGroup[i]
	
		DrawX1 = Button[?"x1"]
		DrawX2 = Button[?"x2"]
		DrawY1 = Button[?"y1"]
		DrawY2 = Button[?"y2"]
		centerX = (DrawX1 + DrawX2)/2
		centerY = (DrawY1 + DrawY2)/2
	
		if( Button[?"cursor"] == 1 ){
			draw_set_color(argument2)
			draw_rectangle(DrawX1, DrawY1, DrawX2, DrawY2, 0)
		}else{
			draw_set_color(argument1)
			draw_rectangle(DrawX1, DrawY1, DrawX2, DrawY2, 0)
		}
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_text(centerX,centerY,Button[?"text"])
	}
}
