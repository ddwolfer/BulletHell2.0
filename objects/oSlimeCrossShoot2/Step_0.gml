/// @description Insert description here
// You can write your code in this editor
event_inherited()

switch( state ){
	case ENEMYSTATE.CHASE:
		if( canShoot ){
			canShoot = false
			var Bullet1 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet1.direction = point_direction(x, y, x+1, y+1);
			Bullet1.sprite_index = sBulletSlime3
			
			var Bullet2 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet2.direction = point_direction(x, y, x+1, y-1);
			Bullet2.sprite_index = sBulletSlime3
			
			var Bullet3 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet3.direction = point_direction(x, y, x-1, y+1);
			Bullet3.sprite_index = sBulletSlime3
			
			var Bullet4 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet4.direction = point_direction(x, y, x-1, y-1);
			Bullet4.sprite_index = sBulletSlime3
			
			alarm[1] = room_speed * ShootCoolDown
		}
		
		
		break
}