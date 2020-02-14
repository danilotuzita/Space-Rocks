// HUD MENU SETUP VARIABLES
menu_width  = 250;
menu_height = 100;

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

setup_button(0, 0,  0, 0, main_hud.icons_sprite, HUD_ICON_CONTINUE,  true, 100, 30, 1, pause_menu_scr_continue, main_hud.hud_acc_color);
setup_button(1, 0,  0, 0, main_hud.icons_sprite,     HUD_ICON_QUIT,  true, 100, 30, 1,     pause_menu_scr_quit, main_hud.hud_acc_color);
setup_button(0, 1, -4, 0, main_hud.icons_sprite,    HUD_ICON_LIVES, false,  20, 20, 4,   pause_menu_scr_status, main_hud.hud_acc_color);

// setting up settings button
options_in_column[0] = 3; // updating options_in_column here so it doesn't fuck up the buttons that auto lines up
var scale = 2;
var box_size = 16;
var settings_button = setup_button(2, 0, 0, 0, main_hud.icons_sprite, HUD_ICON_SETTINGS, true, box_size, box_size, scale, do_nothing, main_hud.hud_acc_color);
buttons[# settings_button, 1] = box_size * scale / 2; // x
buttons[# settings_button, 2] = window_get_height() - (box_size * scale * 1.5); // y

setup = true;