/// @description Insert description here
// You can write your code in this editor
draw_self()

//hurt shader
if( EnemyGetHurt ){	
	shader_set(shPlayerGetHurt)
	shader_set_uniform_f( sh_hurtAlpha, HurtShaderAlpha )	
	draw_self()
	shader_reset()
	HurtShaderAlpha += -0.05
}
if( HurtShaderAlpha <= 0 ){
	EnemyGetHurt = false
	HurtShaderAlpha = 1.0
}

//life bar
if(Hp/MaxHp < 1.0){
	if(Hp > 0)
		draw_line_width_color(x-6, y-sprite_height + 4, x-6 + floor(Hp*10/MaxHp), y-sprite_height + 4,2,c_red,c_red)
	draw_sprite(sTimeBar, 0, x, y-sprite_height + 4)
}



