// HUD MENU SETUP VARIABLES
menu_width  = window_get_width();
menu_height = 120;

// menu pos as distance from the center
menu_x = 0;
menu_y = 0;

menu_x += window_get_width() / 2;  menu_x -= menu_width / 2;  // x to the center and offsetting origin
menu_y += window_get_height() / 2; menu_y -= menu_height / 2; // y to the center and offsetting origin
auto_line_up = true; // automatically calculates the x and y position for the buttons based on their indexes

button_options = 3;
columns = 1;
options_in_column[0] = 2;

setup_button_ext(0, 0, 0, 0, main_hud.icons_sprite, HUD_ICON_SHADER, true, 90, 22, 2, 0, settings_menu_scr_toggle_shader, main_hud.hud_acc_color, true, draw_button_text, "CRT.SHADER");
setup_button_ext(1, 0, 0, 0, main_hud.icons_sprite,   HUD_ICON_QUIT, true, 80, 22, 2, 0,    settings_menu_scr_close_game, main_hud.hud_acc_color, true, draw_button_text, "QUIT.GAME");

create_back_button();

setup = true;
