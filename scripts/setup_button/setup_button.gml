/// @param i
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
var i = argument0, index = argument1, column = argument2, add_x = argument3, add_y = argument4, icon_sprite = argument5, icon_subimage = argument6, outline = argument7, width = argument8, height = argument9, scale = argument10, rot = argument11, script = argument12, acc_color = argument13;

/*
var i = 0;
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
*/

if (i == 0) // if first button to set up
    buttons = ds_grid_create(button_options, 12);

var collumn_width = menu_width / columns; // each button width real state
var button_width_offset = (collumn_width - width * scale)  / 2; // button free space halfed

var button_height_space = menu_height / options_in_column[column]; // button height real state
var button_height_offset = (button_height_space - height * scale) / 2; // button free space halfed

buttons[# i,  0] = index + (column * 10); // index
buttons[# i,  1] = round(menu_x + add_x + button_width_offset  + (collumn_width * column)); // X
buttons[# i,  2] = round(menu_y + add_y + button_height_offset + (button_height_space * index)); // Y
buttons[# i,  3] = icon_subimage; // icon subimage
buttons[# i,  4] = outline; // button outline
buttons[# i,  5] =  width * scale; // button width
buttons[# i,  6] = height * scale; // button height
buttons[# i,  7] = scale; // button scale
buttons[# i,  8] = icon_sprite; // sprite
buttons[# i,  9] = rot; // sprite rotation
buttons[# i, 10] = script; // script to call when clicked
buttons[# i, 11] = acc_color; // accent color

button_indexes[i] = buttons[# i, 0];