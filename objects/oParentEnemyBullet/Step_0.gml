/// @description Insert description here
// You can write your code in this editor
event_inherited()

//bullet attack 子彈傷害
if( place_meeting(x,y,oPlayer) and not oPlayer.PlayerGetHurt){
	show_debug_message("打到人拉")
	playerGetHurt(BulletDamage)
	instance_destroy(id)
}
