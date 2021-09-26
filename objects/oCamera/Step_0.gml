/// @description Insert description here
// You can write your code in this editor
if not(instance_exists(target_)) {
	exit
}
// 讓攝影機跟上目標 (後面參數決定跟隨速度)
x = lerp (x, target_.x, .1)
y = lerp (y, target_.y, .1)

// 攝影機 xy 的最大值與最小值
x = clamp(x, width_ / 2 + CELL_WIDTH,  room_width - width_ / 2  - CELL_WIDTH)
y = clamp(y, height_/ 2 + CELL_HEIGHT, room_width - height_ / 2 - CELL_HEIGHT)

// 防止攝影機跑出地圖
camera_max_x = CELL_WIDTH * ((oLevel.room_open * (oLevel.room_width_size + 2)) + 10)
if(x < width_ / 2) x = width_ / 2
else if(x > camera_max_x - width_ / 2) x = camera_max_x - width_ / 2

if(y < height_ / 2) y = height_ / 2
else if(y > room_height - CELL_HEIGHT - height_ / 2) y = room_height - CELL_HEIGHT - height_ / 2

camera_set_view_pos(view_camera[0], x - width_ / 2, y - height_ / 2)