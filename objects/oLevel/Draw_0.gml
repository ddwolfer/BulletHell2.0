/// @description Insert description here
// You can write your code in this editor
if not surface_exists(shadow_surface_) {
	shadow_surface_ = surface_create(room_width, room_height)
	surface_set_target(shadow_surface_)
	
	for (var _x = 0; _x < width_ - 1; _x++) {
		for (var _y = 0 ; _y < height_ - 1 ; _y++) {
			if (grid_[# _x, _y] == FLOOR && grid_[# _x, _y - 1] == VOID) {
				draw_sprite_ext(sWallShadow, 0, _x*CELL_WIDTH, _y*CELL_HEIGHT, 1, 1, 0, c_white, 1)
			}
		}
	}
	surface_reset_target()	
}

draw_surface(shadow_surface_, 0, 0)

// 顯示房間位置
if (room_position_debug) {

	for (var roomIndex = 0; roomIndex < room_number; roomIndex++) {
		var _self_room_x1 = start_Position + 8 + roomIndex * (room_width_size + 2) 
		var _self_room_x2 = start_Position + 8 + roomIndex * (room_width_size + 2) +  room_width_size
		var _self_room_y1 = 2 
		var _self_room_y2 = height_ - height_space_
	
		draw_set_alpha(0.4)
		draw_rectangle_color(_self_room_x1 * 32, _self_room_y1 * 32, _self_room_x2 * 32, _self_room_y2 * 32, c_black, c_black, c_black, c_black, false)
		draw_set_alpha(1)
	}
}
