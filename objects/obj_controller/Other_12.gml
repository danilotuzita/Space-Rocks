/// @description Handle Keyboard input
/*accept = gamepad_button_check(device, inp_accept);
cancel = gamepad_button_check(device, inp_cancel);
pause = gamepad_button_check_pressed(device, inp_pause);
select = gamepad_button_check_pressed(device, inp_select);*/
inp_kbd_up =    ord("W");
inp_kbd_down =  ord("S");
inp_kbd_left =  ord("A");
inp_kbd_right = ord("D");

inp_kbd_fire1 = mb_left;
inp_kbd_fire2 = mb_right;
inp_kbd_fire3 = mb_middle;

inp_kbd_dash = vk_lshift; 

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