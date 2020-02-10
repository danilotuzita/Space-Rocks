/// It is important to note that the function (screen_save) is designed to be 
/// called in the Draw GUI End Event, which should give consistent results across
/// all platforms. Using it in any other event may not work as expected, and may
/// give different results across different targets and even devices.

if (HUD_DEBUG && !controller_active && false)
    draw_line_color(
        parent.x - camera_get_view_x(view_camera[0]), parent.y - camera_get_view_y(view_camera[0]),
        cursor_x, cursor_y, c_dkgray, c_dkgray
    );

if (!global.paused && (pause || !window_has_focus())) // if pressed pause
{
    window_mouse_set(cursor_x, cursor_y); // updating OS cursor to fake cursor pos (when paused the cursor is unlocked)
    event_user(CONTROLLER.EVENT_RESET_ALL);
    pause_game();
}

if (unpause-- == 1)
    unpause = !unpause_game(); // not (the function returns true when unpaused successfully)
