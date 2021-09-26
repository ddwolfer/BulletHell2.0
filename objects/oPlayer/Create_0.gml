/// @description Insert description here
// You can write your code in this editor
x_speed_ = 0
y_speed_ = 0
max_speed_ = 2
acceleration_ = 0.5

image_xscale = 1.5
image_yscale = 1.5

friction = 0.5

sh_handle_range = shader_get_uniform(shReplaceColor,"range")
sh_handle_replace = shader_get_uniform(shReplaceColor,"colorReplace")

control = true

accell = 1.5

death = false;
damaged = false;

image_speed = 0.3
depth = 0

tileSize = 16

//HpSetting
MaxHp = 150
Hp = 150

//getHurt
PlayerGetHurt = false
HurtShaderAlpha = 1.0
sh_hurtAlpha = shader_get_uniform(shPlayerGetHurt, "hurtalpha")