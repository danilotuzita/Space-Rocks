/// @description Handle Input
if (controller.accept || mouse_check_button_released(mb_left))
    return event_user(HUD_MENU.EVENT_ACCEPT);
if (controller.cancel || controller.pause)
    return event_user(HUD_MENU.EVENT_CANCEL);

if (!controller.controller_active && controller.mouse_moved)
{
    for (var i = 0; i < button_options; i++)
        // if the fake cursor is in the buttons bounds
        if (buttons[# i, 0] >= 0 && // only check when button is clickable/selectable
            between(controller.cursor_x, buttons[# i, 1], buttons[# i, 1] + buttons[# i, 5], true) &&
            between(controller.cursor_y, buttons[# i, 2], buttons[# i, 2] + buttons[# i, 6], true))
        {
            selected_with_mouse = true;
            cursor_pos = buttons[# i, 0]; // save this position
            break;
        } else if (selected_with_mouse) cursor_pos = -1; // unbinding cursor
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
        selected_with_mouse = false;
        return;
    }
    
    var stickX = 0;
    if (controller.leftX >  cursor_deadzone) stickX =  1;
    if (controller.leftX < -cursor_deadzone) stickX = -1;
    var _x = controller.right - controller.left + stickX;
    
    if(_x != 0)
    {
        /// "range" (refered in the comments on this block of code) is the range reserved of possible button indexes for each column
        /// meaning each column can only store max_buttons_in_column (10 for simplicity) buttons
        /// Ex: button[# i, 0] = 12
        ///     this button's index is 12; [2nd column, 3rd row]
        ///     column := 12 / 10 = 1
        ///     row    := 12 % 10 = 2
        var current_column = round(cursor_pos / max_buttons_in_column); // getting current column
        var new_column = wrap(current_column, _x, 0, columns - 1);      // getting new column
        if (current_column == new_column) return;                       // if its the same column range do nothing

        var current_row = cursor_pos mod max_buttons_in_column;    // getting button "position" in range
        var new_column_range = new_column * max_buttons_in_column; // getting the new range's starting index
        var index = new_column_range + current_row;                // getting possible real index (start looking if there's a button in the same row as the last selected button)
        
        repeat(max_buttons_in_column) // looping through all possible numbers in range
        {
            var found = false;
            for (var i = 0; i < clickable_buttons; i++) // for each clickable button
                if (button_indexes[i] == index) // checking if the index exists
                {
                    cursor_pos = button_indexes[i]; // saving the button index
                    found = true;
                    break; // quit for
                }
            if (found) break; // quit repeat
            
            // getting next possible index (going back the indexes because there's a greater chance to exist a button in a lesser row)
            index = wrap(index, -1, new_column_range, new_column_range + max_buttons_in_column - 1);
        }
        
        cursor_move_timeout = cursor_move_timeout_delay;
        selected_with_mouse = false;
    }

}