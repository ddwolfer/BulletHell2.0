/// @description Insert description here
// You can write your code in this editor

//被子彈打到扣血然後削去子彈
getBulletInstance = instance_nearest(x,y,oParentPlayerBullet)

if(not EnemyGetHurt){
	Hp -= getBulletInstance.BulletDamage
	EnemyGetHurt = true
	if(Hp <= 0){
		instance_destroy(id)
	}
}
instance_destroy(getBulletInstance)
