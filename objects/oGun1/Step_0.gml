depth = -y

if(!instance_exists(oPlayer)) return;
getInput()

if(pickedGun and instance_exists(oPlayer)){
	depth = oPlayer.depth -1 
	image_angle = point_direction(x, y, mouse_x, mouse_y)
	
	
	if(oPlayer.control = true){
		x = oPlayer.x
		y = oPlayer.y

		if(mouseLeft and canShoot) {
			var BulletShoot = instance_create_layer(x, y, "Bullet", bulletType)
			audio_play_sound(sd_Shoot2, 10, false)
			BulletShoot.BulletDamage = GunDamage
			BulletShoot.direction = point_direction(x, y, mouse_x, mouse_y)
			
			var BulletShoot1 = instance_create_layer(x, y, "Bullet", bulletType)
			BulletShoot1.BulletDamage = GunDamage
			BulletShoot1.direction = point_direction(x, y, mouse_x, mouse_y) + 10
			
			var BulletShoot2 = instance_create_layer(x, y, "Bullet", bulletType)
			BulletShoot2.BulletDamage = GunDamage
			BulletShoot2.direction = point_direction(x, y, mouse_x, mouse_y) - 10
			
			var BulletShoot3 = instance_create_layer(x, y, "Bullet", bulletType)
			BulletShoot3.BulletDamage = GunDamage
			BulletShoot3.direction = point_direction(x, y, mouse_x, mouse_y) + 20
			
			var BulletShoot4 = instance_create_layer(x, y, "Bullet", bulletType)
			BulletShoot4.BulletDamage = GunDamage
			BulletShoot4.direction = point_direction(x, y, mouse_x, mouse_y) - 20
			
			canShoot = false
			alarm[0] = 30 / attackSpeed
			gunShootOnce = true
		}
		if( gunShootOnce and activeGunDeath ){
			activeGunDeath = false
			alarm[1] = activeTimeLeft * room_speed
		}
	}
	/*if(  keyboard_check_pressed(ord("F")) ){
		instance_destroy(self)
		oPlayer.GunKeepTime = 0
	}*/
	if(x > mouse_x) image_yscale = -1
	else image_yscale = 1
}else if (!pickedGun){
	depth = 10
}
