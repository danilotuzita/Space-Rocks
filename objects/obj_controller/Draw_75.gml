/// It is important to note that the function (screen_save) is designed to be 
/// called in the Draw GUI End Event, which should give consistent results across
/// all platforms. Using it in any other event may not work as expected, and may
/// give different results across different targets and even devices.

if (HUD_DEBUG && !controller_active)
    draw_line(
        parent.x - camera_get_view_x(view_camera[0]), parent.y - camera_get_view_y(view_camera[0]),
        cursor_x, cursor_y
    );

if (!global.paused && pause && pause_timeout <= 0)
{
    event_user(CONTROLLER.EVENT_RESET_ALL);
    pause_game();
}

pause_timeout--;
