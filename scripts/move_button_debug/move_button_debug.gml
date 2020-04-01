/// @param i
/// @param stepx
/// @param stepy
var i = argument0, stepx = argument1, stepy = argument2;

buttons[# i, 1] += stepx * (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));
buttons[# i, 2] += stepy * (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up));
if(keyboard_check_pressed(vk_delete))
    debug("move_button_debug: button#", i,"[", buttons[# i, 1], ",", buttons[# i, 2], "]");
