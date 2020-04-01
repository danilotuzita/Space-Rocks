// HUD MENU SETUP VARIABLES
var scale = 3;
var btn_h = 20;
var btn_w = 42;

menu_width  = btn_w;
menu_height = ORES.COUNT * (btn_h + 2) * scale;
// menu pos as distance from the center
menu_x = 0;
menu_y = 0;

menu_x += window_get_width() / 2;  menu_x -= menu_width / 2;  // x to the center and offsetting origin
menu_y += window_get_height() / 2; menu_y -= menu_height / 2; // y to the center and offsetting origin

auto_line_up = true;
button_options = ORES.COUNT;
columns = 1;
options_in_column[0] = ORES.COUNT;

for (var i = 0; i < ORES.COUNT; i++)
    setup_button_ext(i, 0, 0, 0, main_hud.ores_sprite, i, false, btn_w, btn_h, scale, 0, inv_menu_select_searching_ore, main_hud.hud_acc_color, true, inv_menu_btn_custom_draw, 0);

create_back_button();

setup = true;
