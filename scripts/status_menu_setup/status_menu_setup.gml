// HUD MENU SETUP VARIABLES
menu_width  = window_get_width();
menu_height = window_get_height();

// menu pos as distance from the center
menu_x = 0;
menu_y = 0;

menu_x += window_get_width() / 2;  menu_x -= menu_width / 2;  // x to the center and offsetting origin
menu_y += window_get_height() / 2; menu_y -= menu_height / 2; // y to the center and offsetting origin

auto_line_up = false; // required to be false if there is an disabled button
button_options = 4;
columns = 1; // i don't know exactly why, but this works. i'm gessing it's because this number is corrected when setting up the back button

options_in_column[0] = 1;
setup_button_ext(-1, 0, 0, 0, global.player.sprite_index, 0, false, 32, 32, 5, 90, do_nothing, main_hud.hud_color, false, status_menu_btn1_custom_draw, 0); // ship sprite
setup_button_ext(1, 0, -100, 115, spr_status_menu_buttons_block, 1, false, 64, 64, 2, 0, do_nothing, main_hud.hud_acc_color, true, status_menu_btn1_custom_draw, -2); // ???

options_in_column[1] = 1;
setup_button_ext(0, 1, 60, -40, spr_status_menu_buttons_block, 0, false, 64, 64, 2, 0, status_menu_scr_create_inv_menu, main_hud.hud_acc_color, true, status_menu_btn_ore_draw, -2); // SRCH.ORE

// setting up back button
/*
columns = 3;
options_in_column[2] = 1; // updating options_in_column here so it doesn't fuck up the buttons that auto lines up
var scale = 4;
var box_size = 13;
var raw_x = window_get_width() - (box_size * scale * 1.5); // x
var raw_y = box_size * scale / 2; // y
setup_button_ext_raw(0, 2, raw_x, raw_y, main_hud.icons_sprite, HUD_ICON_BACK, false, box_size, box_size, scale, 0, go_back_menu, main_hud.hud_acc_color, true, status_menu_btn1_custom_draw, 0);
*/
columns = 2;
create_back_button();

setup = true;
