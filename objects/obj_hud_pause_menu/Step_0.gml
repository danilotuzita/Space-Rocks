if(global.paused && parent.pause)
{
    event_user(HUD_PAUSE.EVENT_UNPAUSE);
    return;
}

if (parent.accept) event_user(HUD_PAUSE.EVENT_ACCEPT);
if (parent.cancel) event_user(HUD_PAUSE.EVENT_CANCEL);

// if pressed up or down, override timeout
if (cursor_move_timeout-- < 0 || parent.up_pressed || parent.down_pressed)
{
    var stickY = 0;
    if (parent.leftY >  cursor_deadzone) stickY =  1;
    if (parent.leftY < -cursor_deadzone) stickY = -1;
    
    var _y = parent.down - parent.up + stickY;
    cursor_pos = wrap(cursor_pos, _y, 0, button_options - 1);
    
    cursor_move_timeout = cursor_move_timeout_delay;
}