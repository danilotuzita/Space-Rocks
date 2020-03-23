/// @param i
var i = argument0;

var spr = buttons[# i, 8];
var sub_spr = buttons[# i, 3];
var _x = buttons[# i, 1];
var _y = buttons[# i, 2];
var scl = buttons[# i, 7];
var rot = buttons[# i, 9];
var c = buttons[# i,  0] == cursor_pos ? // if the cursor_pos is the button index
        buttons[# i, 11] : // button acc color
        main_hud.hud_color;
var a = main_hud.hud_alpha;
var text = buttons[# i, 13];

if(buttons[# i, 4]) // if has outline
    draw_rectangle_color_alpha(
        buttons[# i, 1],                   buttons[# i, 2], // x, y
        buttons[# i, 1] + buttons[# i, 5], buttons[# i, 2] + buttons[# i, 6], // x + width, y + height
        c, c, c, c, true, main_hud.hud_alpha
    );

draw_sprite_ext(
    spr, sub_spr,
    _x + 12, _y + 16,
    scl, scl,
    rot, c,
    a
);

var fnt_scl = scl + 1;
// WIP
draw_text_custom_align(_x + buttons[# i, 5], _y + 12, text, fnt_scl, c, a, fa_right, fa_center);

return true;
