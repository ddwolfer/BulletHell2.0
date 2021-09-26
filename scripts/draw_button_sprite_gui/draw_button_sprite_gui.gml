///@arg ID
///@arg button_Sprite
///@arg mouse_on_button_Sprite
function draw_button_sprite_gui(argument0, argument1, argument2){
	var Button = argument0
	var MX = device_mouse_x_to_gui(0) 
	var MY = device_mouse_y_to_gui(0) 

	DrawX1 = Button[?"x1"]
	DrawX2 = Button[?"x2"]
	DrawY1 = Button[?"y1"]
	DrawY2 = Button[?"y2"]
	centerX = (DrawX1 + DrawX2)/2
	centerY = (DrawY1 + DrawY2)/2
	
	if( MX >= centerX-sprite_get_width(argument1)/2 && MX <=centerX+sprite_get_width(argument1)/2 && MY >= centerY-sprite_get_height(argument1)/2 && MY <= centerY+sprite_get_height(argument1)/2){
		Button[?"cursor"] = 1
	}else{
		Button[?"cursor"] = 0
	}
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	if( Button[?"cursor"] == 1 ){
		draw_sprite(argument2,0,centerX,centerY)
		
	}else{
		draw_sprite(argument1,0,centerX,centerY)
	}


	draw_set_color(c_black)
	draw_text(centerX,centerY,Button[?"text"])
}