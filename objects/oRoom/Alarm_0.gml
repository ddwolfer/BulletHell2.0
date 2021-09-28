/// @description 怪物生成
// You can write your code in this editor

for (var idx = 0 ; idx < Enemy_number ; idx++) {
	instance_create_layer(
		(Enemy_position_x[idx] * CELL_WIDTH) + CELL_WIDTH / 2,
		(Enemy_position_y[idx] * CELL_HEIGHT) + CELL_HEIGHT / 2,
		layer_get_id("Instances"),
		oSlimeNormal
		)
}
Create_finish = true