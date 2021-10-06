/// @description Insert description here
// You can write your code in this editor

// setting
Room_index_		= 0
Create_enemy	= false
Create_finish	= false
Enemy_lived		= 0

// 房間角落位置(grid)
grid_x1 = x / CELL_WIDTH
grid_y1 = y / CELL_HEIGHT
grid_x2 = grid_x1 + 19
grid_y2 = grid_y1 + 9

// 隨機決定怪物生成的地點
Enemy_number		= 5
Enemy_position_x	= array_create(Enemy_number, 0)
Enemy_position_y	= array_create(Enemy_number, 0)
var monster_index	= 0

while (monster_index < Enemy_number) {
	var _x = irandom_range(grid_x1, grid_x2)
	var _y = irandom_range(grid_y1, grid_y2)
	if (oLevel.grid_[# _x, _y] == FLOOR) {
		Enemy_position_x[monster_index] = _x
		Enemy_position_y[monster_index] = _y
		show_debug_message("[oRoom Create]Index:"+string(Room_index_)+"|x:"+string(Enemy_position_x[monster_index])+"|y:"+string(Enemy_position_y[monster_index]))
		monster_index++
	}
}
