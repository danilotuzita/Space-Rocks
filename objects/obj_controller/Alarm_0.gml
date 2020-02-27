window_mouse_set(cursor_x, cursor_y); // updating OS cursor to fake cursor pos (when paused the cursor is unlocked)
event_user(CONTROLLER.EVENT_RESET_ALL);
pause_game();