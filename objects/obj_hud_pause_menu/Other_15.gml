/// @description Handle Input
if (parent.accept) return event_user(HUD_PAUSE.EVENT_ACCEPT);
if (parent.cancel) return event_user(HUD_PAUSE.EVENT_CANCEL);

if (!parent.controller_active)
{
    if (mouse_check_button_pressed(mb_left)) return event_user(HUD_PAUSE.EVENT_ACCEPT);
    for (var i = 0; i < button_options; i++)
        // if the fake cursor is in the buttons bounds
        if (between(parent.cursor_x, buttons[# i, 1], buttons[# i, 1] + buttons[# i, 5], true) &&
            between(parent.cursor_y, buttons[# i, 2], buttons[# i, 2] + buttons[# i, 6], true))
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
        cursor_pos = wrap_in_vector(button_indexes, button_options, cursor_pos, _y);
        cursor_move_timeout = cursor_move_timeout_delay;
        return;
    }
    
    var stickX = 0;
    if (parent.leftX >  cursor_deadzone) stickX =  1;
    if (parent.leftX < -cursor_deadzone) stickX = -1;
    var _x = parent.right - parent.left + stickX;
    
    if(_x != 0)
    {
        debug(_x);
        var current_column = abs(cursor_pos) / 10; // getting current column index
        var new_column = wrap(current_column, _x, 0, columns - 1); // getting new column index
        if (current_column == new_column) // if its the same column do nothing
            return;
        
        for (var i = 0; i < button_options; i++) // looping through all the indexes
        {
            var index = new_column * 10; // getting the real index
            if (between(button_indexes[i], index, index + 9, true)) // checking if the option is in the column
            {
                cursor_pos = button_indexes[i]; // saving the button index
                break; // quit for
            }
        }
        
        cursor_move_timeout = cursor_move_timeout_delay;
    }
}