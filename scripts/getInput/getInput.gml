// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

up = keyboard_check(ord("W")); 
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
start = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
select = keyboard_check_pressed(vk_escape);
upMenu = keyboard_check_pressed(vk_up); 
downMenu = keyboard_check_pressed(vk_down);
leftMenu = keyboard_check_pressed(vk_left);
rightMenu = keyboard_check_pressed(vk_right);
mouseLeft = mouse_check_button(mb_left);
mouseLeftClick = mouse_check_button_pressed(mb_left)
PressKeyboard = up || down || left || right || start || select || upMenu || downMenu || leftMenu || rightMenu
