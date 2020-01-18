if(global.paused && parent.pause)
    return event_user(HUD_PAUSE.EVENT_UNPAUSE);

if (parent.accept) return event_user(HUD_PAUSE.EVENT_ACCEPT);
if (parent.cancel) return event_user(HUD_PAUSE.EVENT_CANCEL);

if (!parent.controller_active)
{
    if (mouse_check_button_pressed(mb_left)) return event_user(HUD_PAUSE.EVENT_ACCEPT);
    for (var i = 0; i < button_options; i++)
        // if the fake cursor is in the buttons bounds
        if (between(parent.cursor_x, buttons[# i, 1], buttons[# i, 1] + button_width, true) &&
            between(parent.cursor_y, buttons[# i, 2], buttons[# i, 2] + button_height, true))
        {
            cursor_pos = i; // save this position
            continue;
        }
}

// if pressed up or down, override timeout
if (cursor_move_timeout-- < 0 || parent.up_pressed || parent.down_pressed)
{
    var stickY = 0;
    if (parent.leftY >  cursor_deadzone) stickY =  1;
    if (parent.leftY < -cursor_deadzone) stickY = -1;
    var _y = parent.down - parent.up + stickY;
    
    if(_y != 0)
    {
        if(cursor_pos == -1) //  when no option is selected
            cursor_pos = _y > 0 ? 0 : button_options - 1; // pressing down sets the first one, pressing up sets the last one
        else // there is an option selected
            cursor_pos = wrap(cursor_pos, _y, 0, button_options - 1);
        
        cursor_move_timeout = cursor_move_timeout_delay;
    }
}