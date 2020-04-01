var scl = 2;
var btn_real_width = 170 / scl;
var btn_real_height = 40 / scl;
// HUD MENU SETUP VARIABLES
menu_width  = window_get_width();
menu_height = window_get_height();

// menu pos as distance from the center
menu_x = 0;
menu_y = 0;

menu_x += window_get_width() / 2;  menu_x -= menu_width / 2;  // x to the center and offsetting origin
menu_y += window_get_height() / 2; menu_y -= menu_height / 2; // y to the center and offsetting origin
auto_line_up = false; // automatically calculates the x and y position for the buttons based on their indexes

button_options = 4;
columns = 1;
options_in_column[0] = 0;

setup_button_ext_raw(-1, 0, 280, 380, main_hud.icons_sprite, HUD_ICON_FIRE1_HINT, false, 60, btn_real_height, scl, 0, do_nothing, main_hud.hud_color, false, equip_stats_menu_draw, "Fire1"); // ok
setup_button_ext_raw(-2, 0, 130, 346, main_hud.icons_sprite, HUD_ICON_FIRE3_HINT, false, 90, btn_real_height, scl, 0, do_nothing, main_hud.hud_color, false, equip_stats_menu_draw, "Fire3"); // ok
setup_button_ext_raw(-3, 0, 300, 304, main_hud.icons_sprite, HUD_ICON_FIRE2_HINT, false, 75, btn_real_height, scl, 0, do_nothing, main_hud.hud_color, false, equip_stats_menu_draw, "Fire2"); // ok
setup_button_ext_raw(-4, 0,  64, 275, main_hud.icons_sprite,       HUD_ICON_DASH, false, 80, btn_real_height, scl, 0, do_nothing, main_hud.hud_color, false, equip_stats_menu_draw, "Dash");  // ok

create_back_button();

main_hud.draw_fire1hint = true;
main_hud.draw_fire3hint = true;
main_hud.draw_dashbar = true;
main_hud.draw_f2chargebar = true;

setup = true;
