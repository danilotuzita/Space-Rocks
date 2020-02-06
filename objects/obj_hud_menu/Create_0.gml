main_hud = global.player.hud;
controller = -1;
parent = -1;

cursor_deadzone = .3;
cursor_move_timeout_delay = .2 * room_speed;
cursor_move_timeout = 0;
cursor_pos = -1; // set by the create_hud_pause_menu

menu_width  = 250;
menu_height = 100;

// menu pos as distance from the center
menu_x = 0;
menu_y = 0;

menu_x += window_get_width() / 2;  menu_x -= menu_width / 2;  // x to the center and offsetting origin
menu_y += window_get_height() / 2; menu_y -= menu_height / 2; // y to the center and offsetting origin

// BUTTON VARIABLES
setup = false;
setup_script = noone;
cancel_script = noone;