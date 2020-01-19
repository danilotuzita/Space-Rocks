/// @description Handle Keyboard input
accept = keyboard_check(inp_kbd_accept);
cancel = keyboard_check(inp_kbd_cancel);
pause  = keyboard_check_pressed(inp_kbd_pause);
select = keyboard_check_pressed(inp_kbd_select);

up = keyboard_check(inp_kbd_up);
up_pressed = keyboard_check_pressed(inp_kbd_up);
down = keyboard_check(inp_kbd_down);
down_pressed = keyboard_check_pressed(inp_kbd_down);
left = keyboard_check(inp_kbd_left);
right = keyboard_check(inp_kbd_right);

fire1 = mouse_check_button(inp_kbd_fire1);
fire2 = mouse_check_button(inp_kbd_fire2);
fire2_pressed = mouse_check_button_pressed(inp_kbd_fire2);
fire2_released = mouse_check_button_released(inp_kbd_fire2);
fire3 = mouse_check_button(inp_kbd_fire3);

dash = keyboard_check(inp_kbd_dash);
dash_pressed = keyboard_check_pressed(inp_kbd_dash);
dash_released = keyboard_check_released(inp_kbd_dash);

controller_active = false;