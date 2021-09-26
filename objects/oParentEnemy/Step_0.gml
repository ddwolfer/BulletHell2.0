depth = -y

if( (direction >= 0 and direction < 90-directionRange) or (direction >= 270+directionRange and direction < 360)){
	image_xscale = 1 * image_ratio
}else if( ( direction >= 90 + directionRange and direction < 270-directionRange ) ){
	image_xscale = -1 * image_ratio
}

if(!instance_exists(target)){
	state = ENEMYSTATE.IDLE
	return;
}
if( tilemap_get_at_pixel(tiles,x,y)!=0 ){
	instance_destroy(id)
}

if( Hp / MaxHp < 1.0){
	chaseRange = 10000
}
//body attack 基礎撞擊傷害
if( place_meeting(x,y,oPlayer) and not oPlayer.PlayerGetHurt){
	playerGetHurt(HitDamage)
}

switch(state){	
	case ENEMYSTATE.IDLE:
		counter += 1
		xx = 0
		yy = 0
		if(counter >= room_speed * 1){
			var change = choose(0, 1)
			switch(change){
				case 0: 
					createWanderPos = true
					while(createWanderPos){
						wanderX = x+random_range(-wanderRange,wanderRange)
						wanderY = y+random_range(-wanderRange,wanderRange)
						show_debug_message("X:"+string(wanderX)+"|Y:"+string(wanderY))
						show_debug_message("tilemap 判定"+string(tilemap_get_at_pixel(tiles, wanderX, wanderY)))
						if(tilemap_get_at_pixel(tiles, wanderX, wanderY) <= 0 ){
							createWanderPos = false
						}
					}
					mp_potential_path(wanderPath, wanderX, wanderY, wanderSpeed, 4,false)
					path_start( wanderPath, wanderSpeed, path_action_stop, true )
					state = ENEMYSTATE.WANDER
					
					break
				case 1: 
					counter = 0
					break
			}
		}
		
		if(collision_circle(x, y, chaseRange, target, false, false)){
			state = ENEMYSTATE.CHASE
		}
		break
	
	case ENEMYSTATE.WANDER:
		
		if(collision_circle(x, y, chaseRange, target, false, false)){
			state = ENEMYSTATE.CHASE
		}
		if( path_index >= 1.0 ){
			state = ENEMYSTATE.IDLE
		}
		
		break
		
	case ENEMYSTATE.CHASE:
		//重新定位Player位置
		if( pathChangeCount == 0 ){
			mp_grid_path(RoomGrid, enemyPath, x, y, oPlayer.x, oPlayer.y, true)
			path_start( enemyPath, chaseSpeed, path_action_stop, true )
		}
		//計時用
		pathChangeCount+=1
		if( pathChangeCount >= room_speed/5 ){
			pathChangeCount = 0
		}
		
		break
	
}