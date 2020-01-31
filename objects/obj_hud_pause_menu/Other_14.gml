/// @description Setup
button_options = 3;
columns = 2;
options_in_column[0] = 2; options_in_column[1] = 1;
var collumn_width = menu_width / columns; // each button width real state

buttons = ds_grid_create(button_options, 8);
for (var i = 0; i < button_options; i++) // setting up buttons
{
    switch(i)
    {
        case 0:
            var index = 0;
            var column = 0;
            var add_x = 0;
            var add_y = 0;
            var icon_subimage = HUD_ICON_CONTINUE;
            var outline = true;
            var width = 100;
            var height = 30;
            var scale = 1;
            break;
        case 1:
            var index = 1;
            var column = 0;
            var add_x = 0;
            var add_y = 0;
            var icon_subimage = HUD_ICON_QUIT;
            var outline = true;
            var width = 100;
            var height = 30;
            var scale = 1;
            break;
        case 2:
            var index = 10;
            var column = 1;
            var add_x = 0;
            var add_y = 0;
            var icon_subimage = HUD_ICON_LIVES;
            var outline = true;
            var width = 20;
            var height = 20;
            var scale = 3;
            break;
    }
    
    var button_width_offset = (collumn_width - width * scale)  / 2; // button free space halfed

    var button_height_space = menu_height / options_in_column[column]; // button height real state
    var button_height_offset = (button_height_space - height * scale) / 2; // button free space halfed
    
    buttons[# i, 0] = index; // index
    buttons[# i, 1] = menu_x + add_x + button_width_offset  + (collumn_width * column); // X
    buttons[# i, 2] = menu_y + add_y + button_height_offset + (button_height_space * (index mod 10)); // Y
    buttons[# i, 3] = icon_subimage; // icon subimage
    buttons[# i, 4] = outline; // button outline
    buttons[# i, 5] = width * scale;  // button width
    buttons[# i, 6] = height * scale; // button height
    buttons[# i, 7] = scale; // button scale
    
    button_indexes[i] = index;
}

set_up = true;