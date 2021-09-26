/// @description Insert description here
// You can write your code in this editor
window_set_cursor(cr_default)
CreditsFont = font_add("NewRocker-Regular.ttf", 50,0 ,0 ,0 , 65535)
ButtonFont = font_add("NewRocker-Regular.ttf", 20,0 ,0 ,0 , 65535)
CreditsText = "Thanks For Playing\nBy DDwolf & Chowdog"

ViewW = view_get_wport(view_surface_id[0])
ViewH = view_get_hport(view_surface_id[0])
var ButtonW = sprite_get_width(sMenuButton)/2
var ButtonH = sprite_get_height(sMenuButton)/2

BackButton = button_box_init("Back to Menu",ViewW*4/5-ButtonW,ViewH*5/6-ButtonH,ViewW*4/5+ButtonW,ViewH*5/6+ButtonH)