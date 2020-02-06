/// @description Accept
for (var i = 0; i < button_options; i++) // loop throught all buttons
    if(buttons[# i, 0] == cursor_pos) // if cursor is button index
        return script_execute(buttons[# i, 10]); // execute button script