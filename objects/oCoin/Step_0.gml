/// @description Insert description here
// You can write your code in this editor

if (CoinCreateAnimaion) {
	image_alpha = approach(image_alpha, 1, 0.05)
	y = origin_Y - (sin(pi * AnimaionCount/100) * 10)
	
	if(AnimaionCount >= 100) {
		if (image_alpha == 1) {
			CoinCreateAnimaion = false
			CanPick = true
		}
	} else {
		AnimaionCount += 4
	}
}

if (CanPick) {
	if (place_meeting(x, y, oPlayer)) {
		oGame.PlayerCoin += CoinValue
		show_debug_message("[oCoin Step] coin pick up")
		instance_destroy(id)
	}
}