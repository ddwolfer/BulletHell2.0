/// @description Insert description here
// You can write your code in this editor

var TitleX = ViewW/2 
var TitleY = ViewH/4

draw_set_font(TitleFont)
draw_text(TitleX,TitleY,"Slime Hell")
//draw_sprite_ext(sMenuTitle,0,TitleX,TitleY,1.5,1.5,0,-1,1)

draw_set_font(MenuFont)
draw_button_sprite_group(MenuButton,sMenuButton,sMenuButtonPressed)
//draw_button_group(MenuButton,$FFF200,$39B54A)