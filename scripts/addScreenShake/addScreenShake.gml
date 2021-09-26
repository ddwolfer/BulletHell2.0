// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addScreenShake(intensity, duration){
	if(!instance_exists(oCamera)) exit
	
	with(oCamera){
		screenShake = intensity
		alarm[0] = duration
	}
}