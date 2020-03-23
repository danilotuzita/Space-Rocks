/// @param starting_val
/// @param step
/// easy way to test a parameter
var starting_val = argument0, step = argument1;

if (global.debugval == DEBUGVAL_DEFAULT)
    global.debugval = starting_val;

if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_left))
    global.debugval -= step;
if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_right))
    global.debugval += step;
if(keyboard_check_pressed(vk_delete))
    debug("DEBUG CONTROL:", global.debugval);

return global.debugval;
