/// @description Insert description here
// You can write your code in this editor
event_inherited()

switch( state ){
	case ENEMYSTATE.CHASE:
		if( canShoot ){
			canShoot = false
			var Bullet1 = instance_create_layer(x, y, "Bullet", oSlimeBullet)
			Bullet1.direction = point_direction(x, y, oPlayer.x, oPlayer.y);
			Bullet1.sprite_index = sBulletSlime2
			alarm[1] = room_speed * ShootCoolDown
		}
		
		
		break
}