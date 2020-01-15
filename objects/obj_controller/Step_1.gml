
if (not active) return event_user(CONTROLLER.EVENT_RESET_ALL); // doesn't return anything just didn't want to open brackets

event_user(CONTROLLER.EVENT_CHECK_CONTROLLER);
// controller is not active or keyboard/mouse had any input
if (not controller_active || keyboard_check_pressed(vk_anykey) || last_mouse_x != mouse_x || last_mouse_y != mouse_y)
    event_user(CONTROLLER.EVENT_CHECK_KEYBOARD_MOUSE);

rumble_handler.rumble = controller_active;
hud.draw_cursor = not controller_active;