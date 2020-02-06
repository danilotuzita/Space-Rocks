if(global.paused && controller.pause)
    return event_user(HUD_PAUSE.EVENT_UNPAUSE);
if(!setup)
    return script_execute(setup_script);

event_user(HUD_PAUSE.EVENT_HANDLE_INPUT);