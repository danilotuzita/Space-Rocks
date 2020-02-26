// HUD MENU SETUP VARIABLES
menu_width  = window_get_width();
menu_height = window_get_height();

// menu pos as distance from the center
menu_x = 0;
menu_y = 0;

menu_x += window_get_width() / 2;  menu_x -= menu_width / 2;  // x to the center and offsetting origin
menu_y += window_get_height() / 2; menu_y -= menu_height / 2; // y to the center and offsetting origin

button_options = 3;
columns = 1;
options_in_column[0] = 3;
// options_in_column[1] = 1;

auto_line_up = false; // required to be false if there is an disabled button
setup_button_ext(-1, 0, 0, 0, global.player.sprite_index, 0, false, 32, 32, 5, 90, do_nothing, main_hud.hud_color, false, status_menu_btn1_custom_draw, 0);

setup_button_ext(0, 0,   50, -50, spr_status_menu_buttons_block, 0, false, 64, 64, 2, 0, status_menu_scr_create_inv_menu, main_hud.hud_acc_color, true, status_menu_btn1_custom_draw, -2);
setup_button_ext(1, 0, -100, 115, spr_status_menu_buttons_block, 1, false, 64, 64, 2, 0,                    go_back_menu, main_hud.hud_acc_color, true, status_menu_btn1_custom_draw, -2);
// status_menu_btn1_custom_draw

setup = true;
