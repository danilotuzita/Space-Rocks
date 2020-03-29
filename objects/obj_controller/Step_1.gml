if (select) game_end();
if (not active) return event_user(CONTROLLER.EVENT_RESET_ALL); // doesn't return anything just didn't want to open brackets

if(!mouse_set_to_center) // BUG FIX #20 | Fix cursor starting position
{
    window_mouse_set(cursor_x, cursor_y - 50);
    mouse_set_to_center = window_mouse_get_x() == cursor_x;
    return;
}

event_user(CONTROLLER.EVENT_CHECK_MOUSE);

if (gamepad_is_connected(device))
    event_user(CONTROLLER.EVENT_CHECK_CONTROLLER);
else
    controller_active = false;

// controller is not active or keyboard/mouse had any input
if (not controller_active || keyboard_check_pressed(vk_anykey) || mouse_moved)
    event_user(CONTROLLER.EVENT_CHECK_KEYBOARD);

rumble_handler.rumble = controller_active;
hud.draw_cursor = not controller_active;