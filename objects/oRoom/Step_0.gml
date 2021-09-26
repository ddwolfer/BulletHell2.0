/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Index:"+string(Room_index_)+"|x:"+string(grid_x1)+","+string(grid_x2)+"|y:"+string(grid_y1)+","+string(grid_y2))

if (place_meeting(x, y, oPlayer) && !Create_enemy) {
	show_debug_message("TOACH")
	Create_enemy = true
	alarm[0] = room_speed / 2
}






