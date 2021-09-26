if( collision_circle(x,y, 16,oPlayer,-1,-1)){
	draw_sprite_ext(sDialogueBox, 0, guiWidth / 2, guiHeight / 2 + 200, 5, 5, 0, c_white, image_alpha)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text(240, guiHeight / 2 + 120, text)
}