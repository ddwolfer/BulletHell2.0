
//被子彈打到扣血然後削去子彈
getBulletInstance = instance_nearest(x,y,oParentPlayerBullet)


Hp -= getBulletInstance.BulletDamage
instance_destroy(getBulletInstance)

if(Hp <= 0){
	var CreateCoin = instance_create_layer(x, y, "Instances", oCoin)
	CreateCoin.CoinValue = DropCoinValue
	CreateCoin.image_index = CoinIndex(DropCoinValue)
	instance_destroy(id)
}
