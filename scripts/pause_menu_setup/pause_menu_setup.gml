// HUD MENU SETUP VARIABLES
menu_width  = 250;
menu_height = 110;

// menu pos as distance from the center
menu_x = 0;
menu_y = 0;

menu_x += window_get_width() / 2;  menu_x -= menu_width / 2;  // x to the center and offsetting origin
menu_y += window_get_height() / 2; menu_y -= menu_height / 2; // y to the center and offsetting origin

button_options = 4;
columns = 2;
options_in_column[0] = 2;
options_in_column[1] = 1;

auto_line_up = true; // automatically calculates the x and y position for the buttons based on their indexes

setup_button_ext(0, 0, 0, 0, main_hud.icons_sprite, HUD_ICON_CONTINUE, true, 75, 22, 2, 0, pause_menu_scr_continue, main_hud.hud_acc_color, true, pause_menu_btn_custom_draw, "CONTINUE");
setup_button_ext(1, 0, 0, 0, main_hud.icons_sprite,     HUD_ICON_QUIT, true, 80, 22, 2, 0,     pause_menu_scr_quit, main_hud.hud_acc_color, true, pause_menu_btn_custom_draw, "QUIT.MSSN");

setup_button(0, 1, 8, 0, main_hud.icons_sprite, HUD_ICON_LIVES, false, 20, 20, 6, pause_menu_scr_status, main_hud.hud_acc_color);

// setting up settings button
columns = 3;
options_in_column[2] = 1; // updating options_in_column here so it doesn't fuck up the buttons that auto lines up
var scale = 2;
var box_size = 16;
var raw_x = box_size * scale / 2; // x
var raw_y = window_get_height() - (box_size * scale * 1.5); // y
var settings_button = setup_button_raw(0, 2, raw_x, raw_y, main_hud.icons_sprite, HUD_ICON_SETTINGS, true, box_size, box_size, scale, pause_menu_scr_settings, main_hud.hud_acc_color);

setup = true;
