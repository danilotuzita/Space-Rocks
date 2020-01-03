// It is important to note that the function (screen_save) is designed to be 
// called in the Draw GUI End Event, which should give consistent results across
// all platforms. Using it in any other event may not work as expected, and may
// give different results across different targets and even devices.

if (!global.paused && pause)
{
    event_user(CONTROLLER.EVENT_RESET_ALL);
    pause_game();
}