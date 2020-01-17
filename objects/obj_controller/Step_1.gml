if (not active) return event_user(CONTROLLER.EVENT_RESET_ALL); // doesn't return anything just didn't want to open brackets

event_user(CONTROLLER.EVENT_CHECK_MOUSE);
event_user(CONTROLLER.EVENT_CHECK_CONTROLLER);
// controller is not active or keyboard/mouse had any input
if (not controller_active || keyboard_check_pressed(vk_anykey) || mouse_moved)
    event_user(CONTROLLER.EVENT_CHECK_KEYBOARD);

rumble_handler.rumble = controller_active;
hud.draw_cursor = not controller_active;