///@arg ID
function button_click(argument0) {

	var Button = argument0

	var MX = device_mouse_x_to_gui(0) 
	var MY = device_mouse_y_to_gui(0) 

	if( mouse_check_button_pressed(mb_left) ){
		if( MX >= Button[?"x1"] && MX <=Button[?"x2"] && MY >= Button[?"y1"] && MY <= Button[?"y2"]){
			return true
		}
	}
	return false


}
