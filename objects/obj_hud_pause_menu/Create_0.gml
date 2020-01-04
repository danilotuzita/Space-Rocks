parent = -1;

cursor_deadzone = .3;
cursor_move_timeout_delay = .2 * room_speed;
cursor_move_timeout = 0;
cursor_pos = 0;

menu_width  = 100;
menu_height = 100;

// menu pos as distance from the center
menu_x = -75;
menu_y = 0;

menu_x +=  room_width / 2; menu_x -=  menu_width / 2; // x to the center and offsetting origin
menu_y += room_height / 2; menu_y -= menu_height / 2; // y to the center and offsetting origin

// BUTTON VARIABLES
button_options = 2;
button_width = 100;
button_width_space = menu_width / 1; // each button width real state
button_width_offset = (button_width_space - button_width) / 2; // button free space halfed
button_height = 35;
button_height_space = menu_height / button_options; // each button height real state
button_height_offset = (button_height_space - button_height) / 2; // button free space halfed

buttons = ds_grid_create(button_options, 3);

buttons[# 0, 0] = "^";
buttons[# 1, 0] = "X";
// buttons[# 2, 0] = "2";
// buttons[# 3, 0] = "3";
// buttons[# 4, 0] = "4";

// offsetting button position
for (var i = 0; i < button_options; i++)
{
    buttons[# i, 1] = menu_x +  button_width_offset; // X
    buttons[# i, 2] = menu_y + button_height_offset + (i * button_height_space); // Y
}
