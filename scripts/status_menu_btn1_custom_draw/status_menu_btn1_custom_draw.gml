/// @param i
var i = argument0;

var dir = FILL_LEFT_RIGHT;
var spd = 6;
switch(buttons[# i, 0])
{
    case -1: // ship sprite
        spd = 3;
        dir = FILL_CENTER_OUT;
        break;
    case 0: // buttons
        dir = FILL_BOTTOM_UP;
        break;
    case 10:
        dir = FILL_UP_BOTTOM;
        break;
}

return draw_button_fill(i, dir, spd);
