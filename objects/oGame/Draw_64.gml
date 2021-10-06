/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sCoinGUI, 0, _height/15, _height/15, 5, 5, false, -1, 1)
draw_text( _height/15 + sprite_get_width(sCoinGUI)*5,  _height/15, string(PlayerCoin))
