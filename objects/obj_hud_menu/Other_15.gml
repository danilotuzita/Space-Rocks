/// @description Handle Input
if (controller.accept) return event_user(HUD_MENU.EVENT_ACCEPT);
if (controller.cancel || controller.pause) return event_user(HUD_MENU.EVENT_CANCEL);

if (!controller.controller_active)
{
    if (mouse_check_button_pressed(mb_left)) return event_user(HUD_MENU.EVENT_ACCEPT);
    for (var i = 0; i < button_options; i++)
        // if the fake cursor is in the buttons bounds
        if (buttons[# i, 0] >= 0 && // only check when button is clickable/selectable
            between(controller.cursor_x, buttons[# i, 1], buttons[# i, 1] + buttons[# i, 5], true) &&
            between(controller.cursor_y, buttons[# i, 2], buttons[# i, 2] + buttons[# i, 6], true))
        {
            cursor_pos = buttons[# i, 0]; // save this position
            continue;
        }
}

// if pressed up or down, override timeout
if (cursor_move_timeout-- < 0 || controller.up_pressed || controller.down_pressed)
{
    var stickY = 0;
    if (controller.leftY >  cursor_deadzone) stickY =  1;
    if (controller.leftY < -cursor_deadzone) stickY = -1;
    var _y = controller.down - controller.up + stickY;
    
    if(_y != 0)
    {
        cursor_pos = wrap_in_vector(button_indexes, cursor_pos, _y);
        cursor_move_timeout = cursor_move_timeout_delay;
        return;
    }
    
    var stickX = 0;
    if (controller.leftX >  cursor_deadzone) stickX =  1;
    if (controller.leftX < -cursor_deadzone) stickX = -1;
    var _x = controller.right - controller.left + stickX;
    
    if(_x != 0)
    {
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