/// @description Insert description here
// You can write your code in this editor

TitleFont = font_add("NewRocker-Regular.ttf", 75,0 ,0 ,0 , 65535)
MenuFont = font_add("NewRocker-Regular.ttf", 20,0 ,0 ,0 , 65535)
ViewW = view_get_wport(view_surface_id[0])
ViewH = view_get_hport(view_surface_id[0])

var ButtonW = sprite_get_width(sMenuButton)/2
var ButtonH = sprite_get_height(sMenuButton)/2
var ButtonSpace = ViewH/7

StartButton = button_box_init("Start", ViewW/2 - ButtonW, ViewH/2 - ButtonH,  ViewW/2 + ButtonW, ViewH/2 + ButtonH )
CreditsButton = button_box_init("Credits", ViewW/2 - ButtonW, ViewH/2 - ButtonH + ButtonSpace,  ViewW/2 + ButtonW, ViewH/2 + ButtonH +ButtonSpace)
QuitButton = button_box_init("Quit", ViewW/2 - ButtonW, ViewH/2 - ButtonH + ButtonSpace*2,  ViewW/2 + ButtonW, ViewH/2 + ButtonH +ButtonSpace*2)

MenuButton = button_group_init(StartButton, CreditsButton, QuitButton, 1) //0 左右  1 上下
