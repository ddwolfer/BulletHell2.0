/// @description Insert description here
// You can write your code in this editor

if (DoorOpenComplete_) {
	show_debug_message("結束")
	oLevel.room_open += 1
	instance_destroy(id)
} else if (StartOpen) {
	show_debug_message("移動")
	y = approach(y, ClosePosition, 0.5)
	if (y == ClosePosition) {
		DoorOpenComplete_ = true
	}
} else if (DoorOpen_) {
	show_debug_message("震動")
	match_door_bottom.DoorOpen_ = true
	screenShake = approach(screenShake, 0, 0.1)
	x = random_range(origin_x_ - screenShake, origin_x_ + screenShake)
	y = random_range(origin_y_ - screenShake, origin_y_ + screenShake)
	if (screenShake == 0) {
		StartOpen = true
	}
}