/// @param i
/// @param dir
/// @param spd(default=2)

var   i = argument[0];
var dir = argument[1];
var spd = 2;

if (argument_count > 2) // if spd is passed
    spd = argument[2];

var spr = buttons[# i, 8];
var sub_spr = buttons[# i, 3];
var _x = buttons[# i, 1];
var _y = buttons[# i, 2];
var scl = buttons[# i, 7];
var rot = buttons[# i, 9];
var c = buttons[# i,  0] == cursor_pos ? // if the cursor_pos is the button index
        buttons[# i, 11] : // button acc color
        main_hud.hud_color;
var progress = buttons[# i, 13];

if(buttons[# i, 4]) // if has outline
    draw_rectangle_color_alpha(
        buttons[# i, 1],                   buttons[# i, 2], // x, y
        buttons[# i, 1] + buttons[# i, 5], buttons[# i, 2] + buttons[# i, 6], // x + width, y + height
        c, c, c, c, true, main_hud.hud_alpha
    );

draw_sprite_fill(
    spr, sub_spr,
    _x, _y,
    scl, scl, rot,
    c, main_hud.hud_alpha,
    progress, dir
);

buttons[# i, 13] += spd / room_speed;

return true;
