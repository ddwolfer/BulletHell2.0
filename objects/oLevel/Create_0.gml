/// @description 初步生成地圖

// 確保每次生成的隨機亂數有隨機
randomize()

shadow_surface_ = noone
room_position_debug = false

// 取得Tilemap ID
var _wall_map_id = layer_tilemap_get_id("WallTiles")

// Set up grid 網格(放tilemap用)
width_ = room_width div CELL_WIDTH
height_ = room_height div CELL_HEIGHT
grid_ = ds_grid_create(width_, height_)
ds_grid_set_region(grid_, 0, 0, width_, height_, VOID)

// 放預設的地板 Set default floor
height_space_ = 2
start_Position = 3
end_Position   = width_ - 3
for (var _x = start_Position; _x < end_Position; _x++) {
	if (_x >= start_Position && _x < start_Position + 6) || (_x >= end_Position - 6 && _x < end_Position) {
		for (var _y = ((height_ - height_space_) / 2) - 1; _y < (height_ - height_space_) / 2 + 3; _y++) {
			grid_[# _x, _y] = FLOOR
		}
	} else {
		grid_[# _x, (height_ - height_space_) / 2] = FLOOR
		grid_[# _x, (height_ - height_space_) / 2 + 1] = FLOOR
	}
}

// Player 的位置
var _player_start_x = 6 * CELL_WIDTH + CELL_WIDTH / 2  //_controller_x * CELL_WIDTH + CELL_WIDTH / 2
var _player_start_y = 5 * CELL_HEIGHT + CELL_HEIGHT/ 2 //_controller_y * CELL_HEIGHT + CELL_HEIGHT/ 2
instance_create_layer(_player_start_x, _player_start_y, "Instances", oPlayer)

// 創建X個隨機房間
// Create the controller
room_number = 5
room_width_size = 20 
for (var roomIndex = 0; roomIndex < room_number; roomIndex++) {
	var _self_room_x1 = start_Position + 8 + roomIndex * (room_width_size + 2) 
	var _self_room_x2 = start_Position + 8 + roomIndex * (room_width_size + 2) +  room_width_size
	var _self_room_y1 = 2 
	var _self_room_y2 = height_ - height_space_
	
	var _controller_x = (_self_room_x1 + _self_room_x2) / 2
	var _controller_y = (_self_room_y1 + _self_room_y2) / 2
	var _controller_direvtion = irandom(3)  // {→:0, ↑:1, ←:2, ↓:3}
	//var _steps = 300 // 生成多少次
	var _generate_floor = 0
	var _generate_floor_threshold = 100

	var _direction_change_odds = 1
	
	while (_generate_floor <= _generate_floor_threshold) {
		if (grid_[# _controller_x, _controller_y] == VOID){
			show_debug_message(string(_generate_floor)+string(grid_[# _controller_x, _controller_y]))
			_generate_floor += 1
		}

		grid_[# _controller_x, _controller_y] = FLOOR
	
		// rondomize the direction
		if (irandom(_direction_change_odds) == _direction_change_odds) {
			_controller_direvtion = irandom(3)
		}
	
		//move the controller
		var _x_direvtion = lengthdir_x(1, _controller_direvtion * 90)
		var _y_direvtion = lengthdir_y(1, _controller_direvtion * 90)
		_controller_x += _x_direvtion
		_controller_y += _y_direvtion
	
		// 確保沒有超過先前設定的grid map
		if (_controller_x < _self_room_x1 || _controller_x >= _self_room_x2) {
			_controller_x -= _x_direvtion * 2
			_controller_direvtion = irandom(3)
		}
		if (_controller_y < _self_room_y1 || _controller_y >= _self_room_y2) {
			_controller_y -= _y_direvtion * 2
			_controller_direvtion = irandom(3)
		}
	}
}

room_open = 1

// 鋪牆壁
for (var _y = 1; _y < height_ - 1; _y++) {
	for (var _x = 1 ; _x < width_ - 1; _x++) {
		if (grid_[# _x, _y] != FLOOR) {
			var _north_tile = grid_[# _x, _y - 1] == VOID
			var _west_tile = grid_[# _x - 1, _y] == VOID
			var _east_tile = grid_[# _x + 1, _y] == VOID
			var _south_tile = grid_[# _x, _y + 1] == VOID
			
			var _tile_index = 1 + NORTH * _north_tile + WEST * _west_tile + EAST * _east_tile + SOUTH * _south_tile
			if (_tile_index == 1) {
				grid_[# _x, _y] = FLOOR
			} else {
				if (_tile_index >= 16) {
					var _north_east_tile = grid_[# _x + 1, _y - 1] == VOID
					var _north_west_tile = grid_[# _x - 1, _y - 1] == VOID
					var _south_east_tile = grid_[# _x + 1, _y + 1] == VOID
					var _south_west_tile = grid_[# _x - 1, _y + 1] == VOID
					
					var _tile_index = _tile_index + _north_east_tile * NorthEast + _north_west_tile * NorthWest + _south_east_tile * SouthEast + _south_west_tile * SouthWest
				} 
				
				tilemap_set(_wall_map_id, _tile_index, _x, _y)
				instance_create_layer(_x * CELL_WIDTH, _y * CELL_HEIGHT, "Object", oWall)
			}
		}
	}
}


