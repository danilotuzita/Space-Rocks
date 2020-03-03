/// It is important to note that the function (screen_save) is designed to be 
/// called in the Draw GUI End Event, which should give consistent results across
/// all platforms. Using it in any other event may not work as expected, and may
/// give different results across different targets and even devices.

if (DEBUG && !controller_active && false)
    draw_line_color(
        parent.x - camera_get_view_x(view_camera[0]), parent.y - camera_get_view_y(view_camera[0]),
        cursor_x, cursor_y, c_dkgray, c_dkgray
    );

if (!global.paused && (pause || !window_has_focus())) // if pressed pause
{
    with(hud)
    {
        event_user(HUD.EVENT_DISABLE_SHOULD_DRAW); // disabling the hud should draw
        cursor_index = HUD_CURSOR_POINTER; // changing the mouse cursor to pointer
    }
    alarm[CONTROLLER.ALARM_PAUSE] = 2; // calling the pause alarm in 2 ticks (1 is not enough time to disable hud drawing before taking the pause screenshot)
}

if (unpause-- == 1)
{
    with(hud)
    {
        event_user(HUD.EVENT_RELOAD_SHOULD_DRAW); // reloading should draw
        cursor_index = HUD_CURSOR_AIM; // changing the mouse cursor to aim
    }
    unpause = !unpause_game(); // not (the function returns true when unpaused successfully)
}


    

    