/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, oPlayer)) {
	var DoorTop_ = instance_nearest(x, y, oDoorTop)
	DoorTop_.DoorOpen_ = true
	instance_destroy(id)
}