if(global.paused && parent.pause)
    return event_user(HUD_PAUSE.EVENT_UNPAUSE);
if(!set_up) return;

event_user(HUD_PAUSE.EVENT_HANDLE_INPUT);