/// @param index
/// @param column
/// @param add_x
/// @param add_y
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
var index = argument0, column = argument1, add_x = argument2, add_y = argument3, icon_sprite = argument4, icon_subimage = argument5, outline = argument6, width = argument7, height = argument8, scale = argument9, rot = argument10, script = argument11, acc_color = argument12, clickable = argument13, custom_draw_scr = argument14, custom_var = argument15;

/*
var index = 0;
var column = 0;
var add_x = 0;
var add_y = 0;
var icon_sprite = global.player.sprite_index;
var icon_subimage = HUD_ICON_CONTINUE;
var outline = true;
var width = 32;
var height = 32;
var scale = 5;
var rot = 90;
var script = status_menu_cancel;
var acc_color = main_hud.hud_color;
var clickable = true;
var custom_draw_scr = do_nothing;
var custom_var = 0;
*/

var i = setup_button_count++;

if (i == 0) // if first button to set up
{
    buttons = ds_grid_create(button_options, 14);
    clickable_buttons = 0;
}

if (index < 0) auto_line_up = false; // if there is an negative index disable auto_line_up
else           auto_line_up = auto_line_up ? true : false; // forcing auto_line_up to be 1 or 0

var collumn_width = menu_width / columns; // each button width real state
var button_width_offset = (collumn_width - width * scale)  / 2; // button free space halfed

var button_height_space = menu_height / (auto_line_up ? options_in_column[column] : 1); // button height real state
var button_height_offset = (button_height_space - height * scale) / 2; // button free space halfed

buttons[# i,  0] = index + (column * max_buttons_in_column); // index
buttons[# i,  1] = round(menu_x + add_x + button_width_offset  + (collumn_width * column * auto_line_up)); // X
buttons[# i,  2] = round(menu_y + add_y + button_height_offset + (button_height_space * index * auto_line_up)); // Y
buttons[# i,  3] = icon_subimage; // icon subimage
buttons[# i,  4] = outline; // button outline
buttons[# i,  5] =  width * scale; // button width
buttons[# i,  6] = height * scale; // button height
buttons[# i,  7] = scale; // button scale
buttons[# i,  8] = icon_sprite; // sprite
buttons[# i,  9] = rot; // sprite rotation
buttons[# i, 10] = script; // script to call when clicked
buttons[# i, 11] = acc_color; // accent color
buttons[# i, 12] = custom_draw_scr; // custom draw script
buttons[# i, 13] = custom_var; // custom var (var helper)

if (clickable) // only add to clickable buttons when index is set
    button_indexes[clickable_buttons++] = buttons[# i, 0];

return i; // returning i of button
