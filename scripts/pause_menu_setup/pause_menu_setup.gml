button_options = 3;
columns = 2;
options_in_column[0] = 2;
options_in_column[1] = 1;

auto_line_up = true; // automatically calculates the x and y position for the buttons based on their indexes

setup_button(0, 0,  0, 0, main_hud.icons_sprite, HUD_ICON_CONTINUE,  true, 100, 30, 1, pause_menu_scr_continue, main_hud.hud_acc_color);
setup_button(1, 0,  0, 0, main_hud.icons_sprite,     HUD_ICON_QUIT,  true, 100, 30, 1,     pause_menu_scr_quit, main_hud.hud_acc_color);
setup_button(0, 1, -4, 0, main_hud.icons_sprite,    HUD_ICON_LIVES, false,  20, 20, 4,   pause_menu_scr_status, main_hud.hud_acc_color);

setup = true;
