/// @description Insert description here
// You can write your code in this editor
if(room == r_menu or room == r_Credit or room == r_EndRoom){
	return
}
if(not roomStartFlag){return}
if(room == r_Tutorial){ GunNeedNumber = 2 } else{GunNeedNumber = 6}

GunList = ds_list_create()
GunNumber = collision_rectangle_list(0,0,room_width,room_height,oParentGun,0,1,GunList,0)
var cam = view_camera[0];
var CaX1 = camera_get_view_x(cam);
var CaY1 = camera_get_view_y(cam);
var CaX2 = CaX1 + camera_get_view_width(cam);
var CaY2 = CaY1 + camera_get_view_height(cam);


if( GunNumber < GunNeedNumber ){
	CreateFlag = true
	show_debug_message("[oCreateGun Step]沒有槍拉")
	show_debug_message("[oCreateGun Step]"+string(CaX1)+"|"+string(CaX2)+"|"+string(CaY1)+"|"+string(CaY2)+"|")
	
	
	while(CreateFlag){
		var randomCreateGunX = random_range(CaX1,CaX2)
		var randomCreateGunY = random_range(CaY1,CaY2)
		layerID = layer_get_id("Tiles")
		tiles = layer_tilemap_get_id(layerID)
		
		if( tilemap_get_at_pixel(tiles,randomCreateGunX+8,randomCreateGunY) == 0){
			if( tilemap_get_at_pixel(tiles,randomCreateGunX-3,randomCreateGunY) == 0 )
				CreateFlag = false
		}
	}
	
	instance_create_layer(randomCreateGunX,randomCreateGunY,"Instances",choose(oGun1,oGun2,oGun3))
}