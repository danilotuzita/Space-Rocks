// setting up back button
columns++;
options_in_column[columns - 1] = 1; // updating options_in_column here so it doesn't fuck up the buttons that auto lines up
var scale = 4;
var box_size = 13;
var raw_x = window_get_width() - (box_size * scale * 1.5); // x
var raw_y = box_size * scale / 2; // y
setup_button_ext_raw(0, columns - 1, raw_x, raw_y, main_hud.icons_sprite, HUD_ICON_BACK, false, box_size, box_size, scale, 0, go_back_menu, main_hud.hud_acc_color, true, draw_button_fill2, 0);
