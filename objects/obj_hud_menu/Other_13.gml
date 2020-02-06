/// @description Unpause
controller.pause_timeout = controller.pause_timeout_delay; // setting unpause delay
pause_game(); // unpause game
event_user(HUD_PAUSE.EVENT_DESTROY);