/// @param i
var i = argument0;

var spd = 6;
var dir = 3;
var spr = buttons[# i, 8];
var sub_spr = buttons[# i, 3];
var _x = buttons[# i, 1];
var _y = buttons[# i, 2];
var w = buttons[# i, 5];
var h = buttons[# i, 6];
var scl = buttons[# i, 7];
var rot = buttons[# i, 9];
var c = buttons[# i,  0] == cursor_pos ? // if the cursor_pos is the button index
        buttons[# i, 11] : // button acc color
        main_hud.hud_color;
var progress = buttons[# i, 13];

if(buttons[# i, 4]) // if has outline
    draw_rectangle_outline(
        _x, _y,
        _x + w, _y + h,
        c, scl, main_hud.hud_alpha
    );

// drawing "frame"
draw_sprite_fill(
    spr, sub_spr,
    _x, _y,
    scl, scl, rot,
    c, main_hud.hud_alpha,
    progress, dir
);

// drawing ore
draw_sprite_fill(
    main_hud.ores_sprite, global.player.searching_ore,
    _x + (32+16) * scl, // don't even ask me why
    _y,
    scl, scl, rot, c, main_hud.hud_alpha, progress, dir
);

buttons[# i, 13] += spd / room_speed;

return true;
