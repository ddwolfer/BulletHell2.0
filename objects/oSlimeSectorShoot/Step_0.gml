/// @description Insert description here
// You can write your code in this editor
event_inherited()

switch( state ){
	case ENEMYSTATE.CHASE:
		if( canShoot ){
			canShoot = false
			var PlayerDirection = point_direction(x, y, oPlayer.x, oPlayer.y)
			
			var Bullet1 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet1.direction = PlayerDirection
			Bullet1.sprite_index = sBulletSlime4
			
			var Bullet2 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet2.direction = PlayerDirection - 25
			Bullet2.sprite_index = sBulletSlime4
			
			var Bullet3 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet3.direction = PlayerDirection + 25
			Bullet3.sprite_index = sBulletSlime4
			
			var Bullet4 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet4.direction = PlayerDirection - 50
			Bullet4.sprite_index = sBulletSlime4
			
			var Bullet5 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet5.direction = PlayerDirection + 50
			Bullet5.sprite_index = sBulletSlime4
			
			alarm[1] = room_speed * ShootCoolDown
		}
		
		
		break
}