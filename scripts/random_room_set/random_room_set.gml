// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_room_set(){
	var AllRoom = global.AllRoom
	var List = [noone , noone, noone, r_EndRoom]
	var i
	for( i=0 ; i < 3 ; i++){
		var roomnumber = irandom(7)
		if(AllRoom[roomnumber] != 0){
			List[i] = AllRoom[roomnumber]
			AllRoom[roomnumber] = 0
		}
		else
			i -= 1
	}
	return List
}