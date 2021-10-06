/// @description Insert description here
// You can write your code in this editor
// 如果玩家夠近再把門打開
if (DoorOpen_ and collision_circle(x, y, CELL_HEIGHT * 2, oPlayer, false, false)) {
	PlayerClose = true
}
//門打開完畢後把物件刪掉
if (DoorOpenComplete_) {
	show_debug_message("結束")
	oLevel.room_open += 1
	instance_destroy(id)
} else if (StartOpen) { // 	當玩家夠近後 開始把門打開
	show_debug_message("移動")
	y = approach(y, ClosePosition, 0.5)
	if (y == ClosePosition) {
		DoorOpenComplete_ = true
	}
	// 弄一個震動的特效
} else if (DoorOpen_ and PlayerClose) {
	show_debug_message("震動")
	match_door_bottom.DoorOpen_ = true // 下面的門由上面的控制開啟
	screenShake = approach(screenShake, 0, 0.1)
	x = random_range(origin_x_ - screenShake, origin_x_ + screenShake)
	y = random_range(origin_y_ - screenShake, origin_y_ + screenShake)
	if (screenShake == 0) {
		StartOpen = true
	}
}