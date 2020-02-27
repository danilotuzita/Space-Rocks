/// @param index
/// @param column
/// @param raw_x
/// @param raw_y
/// @param icon_sprite
/// @param icon_subimage
/// @param outline
/// @param width
/// @param height
/// @param scale
/// @param rot
/// @param script
/// @param acc_color
/// @param clickable
/// @param custom_draw_scr
/// @param custom_var
var index = argument0, column = argument1, raw_x = argument2, raw_y = argument3, icon_sprite = argument4, icon_subimage = argument5, outline = argument6, width = argument7, height = argument8, scale = argument9, rot = argument10, script = argument11, acc_color = argument12, clickable = argument13, custom_draw_scr = argument14, custom_var = argument15;

var raw_button = setup_button_ext(index, column, 0, 0, icon_sprite, icon_subimage, outline, width, height, scale, rot, script, acc_color, clickable, custom_draw_scr, custom_var);
buttons[# raw_button, 1] = raw_x;
buttons[# raw_button, 2] = raw_y;
return raw_button;