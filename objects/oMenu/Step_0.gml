/// @description Insert description here
// You can write your code in this editor

if( button_group_click(MenuButton) == 0 ){ //Start Button
	room_goto(r_Tutorial)
	RoomList = random_room_set()
}else if( button_group_click(MenuButton) == 1 ){ // Credits Button
	room_goto(r_Credit)
}else if( button_group_click(MenuButton) == 2 ){ // Quit Button
	game_end()
}