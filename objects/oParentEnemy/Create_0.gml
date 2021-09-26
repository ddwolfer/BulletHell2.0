image_speed = 0.3
friction = 0.5
image_ratio = abs(image_xscale)
enum ENEMYSTATE{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE
}

pathChangeCount = 0
state = ENEMYSTATE.IDLE
accell = 0.5
layerID = layer_get_id("Tiles")
tiles = layer_tilemap_get_id(layerID)
directionRange = 10
tileSize = 16
//wander setting
createWanderPos = true
wanderRange = 32
wanderPath = path_add()
wanderSpeed = 0.25
wanderX = 0
wanderY = 0

//chase setting
chaseRange = 150
chaseSpeed = 0.5
target = oPlayer
enemyPath = path_add()
RoomGrid = mp_grid_create(0, 0, room_width, room_height, 8,8)
mp_grid_add_instances(RoomGrid, oWall, true)
mp_grid_add_instances(RoomGrid, oSign, true)
counter = 0
//Attack
HitDamage = 5
HitCoolDown = 1
canHit = true
//Hp
MaxHp = 180
Hp = MaxHp
//get Hurt
EnemyGetHurt = false
HurtShaderAlpha = 1.0
sh_hurtAlpha = shader_get_uniform(shPlayerGetHurt, "hurtalpha")

