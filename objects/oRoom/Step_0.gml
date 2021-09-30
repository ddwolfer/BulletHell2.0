/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Index:"+string(Room_index_)+"|x:"+string(grid_x1)+","+string(grid_x2)+"|y:"+string(grid_y1)+","+string(grid_y2))

// 玩家進入城間內後生成怪物
if (place_meeting(x, y, oPlayer) && !Create_enemy) {
	show_debug_message("TOACH")
	Create_enemy = true
	alarm[0] = room_speed / 2
}
// 完成生成後 開始偵測房間內剩下多少怪物
if (Create_finish) {
	var Enemy_room_list = ds_list_create()
	Enemy_lived = instance_place_list(x, y, oParentEnemy, Enemy_room_list, false)
	show_debug_message("[oRoom Step]Index:" + string (Room_index_) + "|enemy count:" + string(Enemy_lived))
	// 怪物清完後開啟下一關的門 然後刪除自己
	if (Enemy_lived <= 0) {
		var Door_to_open = instance_nearest(x, y, oDoorTop)
		Door_to_open.DoorOpen_ = true
		instance_destroy(id)
	}
}





