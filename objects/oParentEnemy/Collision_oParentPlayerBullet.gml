
//被子彈打到扣血然後削去子彈
getBulletInstance = instance_nearest(x,y,oParentPlayerBullet)


Hp -= getBulletInstance.BulletDamage
if(Hp <= 0){
	instance_destroy(id)
}
instance_destroy(getBulletInstance)
