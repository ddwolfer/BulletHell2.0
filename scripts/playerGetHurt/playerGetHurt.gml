// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerGetHurt(damage){
	if(instance_exists(oPlayer)){
		oPlayer.Hp -= damage
		oPlayer.PlayerGetHurt = true
		audio_play_sound(sd_PlayerGetHurt,10,false)
		addScreenShake(8, 16)
	}
}